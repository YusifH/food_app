import 'package:flutter/material.dart';

import '../../models/restoran.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/food_list.dart';
import '../../widgets/food_list_view.dart';
import '../../widgets/restoran_info.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restoran = Restoran.generateRestoran();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_outlined,
              Icons.search,
            ),
            RestoranInfo(),
            FoodList(
                selected,
                (int index){
                  setState(() {
                    selected = index;
                  });
                  pageController.jumpToPage(index);
                },
                restoran),
            Expanded(
                child: FoodListView(
              selected,
                (int index) {
                  setState(() {
                    selected = index;
                  });
                },
                pageController,
                  restoran,
            ))
          ],
        )
    );
  }
}
