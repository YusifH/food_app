import 'package:flutter/material.dart';

import '../models/restoran.dart';

class FoodList extends StatelessWidget {
final int selected;
final Function callback;
final Restoran restoran;
FoodList(this.selected, this.callback, this.restoran);
  @override
  Widget build(BuildContext context) {
    final category = restoran.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => callback(index),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: selected == index ? Colors.orangeAccent : Colors.white
              ),
              child: Text(category[index], style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          separatorBuilder: (_, index) => SizedBox(width: 20),
          itemCount: category.length),
    );
  }
}
