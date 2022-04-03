import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class FoodQuantity extends StatefulWidget {

  final Food food;

  FoodQuantity(this.food);
  @override
  _FoodQuantityState createState() => _FoodQuantityState();
}


class _FoodQuantityState extends State<FoodQuantity> {
  int _count = 1;
  void _incrementCount(){
    if(_count >= 9){
      return;
    }
    setState(() {
      _count++;
    });
  }
  void _decrementCount(){
    if(_count <2){
      return;
    }
    setState(() {
      _count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.maxFinite,
      child: Stack(
        children: [
          Align(
            alignment: Alignment(-0.3, 0),
            child: Container(
              width: 120,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Text('AZN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                  Text(widget.food.price.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.3,0),
            child: Container(
              width: 120,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _decrementCount,
                    child: Text('-', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: Text("${_count}",style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                  ),
                  GestureDetector(
                    onTap: _incrementCount,
                    child: Text('+', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
          ),
        ],
      ),

    );

  }

}

