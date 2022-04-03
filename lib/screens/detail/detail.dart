// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/screens/detail/widgets/food_detail.dart';
import 'package:food_app/screens/detail/widgets/food_img.dart';
import 'package:food_app/widgets/custom_app_bar.dart';

import '../../models/food.dart';

class DetailPage extends StatelessWidget {
final Food food;
DetailPage(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBar(
                  Icons.arrow_back_ios_outlined,
                  Icons.favorite_border,
                  leftCallBack: () => Navigator.of(context).pop(),
                ),
                FoodImg(food),
                FoodDetail(food),
              ],
            ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          onPressed: (){},
          fillColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40)
          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Icon(Icons.shopping_bag_outlined, color: Colors.black,size: 30,),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                  child: Text(food.quantity.toString(),style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                )
            ],
          ),
        ),
      ),
    );
  }
}
