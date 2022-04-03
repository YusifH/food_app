import 'package:flutter/material.dart';
import 'package:food_app/screens/detail/detail.dart';

import '../models/restoran.dart';
import 'food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restoran restoran;
  FoodListView(this.selected, this.callback, this.pageController, this.restoran);
  @override
  Widget build(BuildContext context) {
    final category = restoran.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children:
          category.map((e) => ListView.separated(
              itemBuilder: (context, index) =>
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DetailPage(restoran.menu[category[selected]]![index]))
                      );
                    },
                      child: FoodItem(
                      restoran.menu[category[selected]]![index])),
              separatorBuilder: (_, index) => SizedBox(height: 15),
              itemCount:  restoran.menu[category[selected]]!.length)).toList()
        ,
      ),
    );
  }
}
