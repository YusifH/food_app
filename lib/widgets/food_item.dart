import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class FoodItem extends StatelessWidget {
  final Food food;
  FoodItem(this.food);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 110,
            height: 110,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(food.imgUrl, fit: BoxFit.fitHeight,),
            ),
          ),
          Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 10,
                  right: 10
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(food.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        fontSize: 16,
                          height: 1.5
                        ),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, size: 15,)
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(food.desc,style: TextStyle(
                      height: 1.5,
                        color: food.highLight ? Colors.yellow : Colors.grey.withOpacity(0.8)),),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text('AZN', style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(width: 5),
                        Text('${food.price}', style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
