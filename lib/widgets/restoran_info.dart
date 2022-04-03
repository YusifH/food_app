import 'package:flutter/material.dart';
import 'package:food_app/models/restoran.dart';

class RestoranInfo extends StatelessWidget {
final restoran = Restoran.generateRestoran();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(restoran.name, style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text(restoran.waitTime, style: TextStyle(color: Colors.white),),
                      ),
                      SizedBox(width: 10),
                      Text(restoran.distance, style: TextStyle(
                          fontSize: 16,
                        color: Colors.grey.withOpacity(0.4),
                      fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 10),
                      Text(restoran.label, style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.withOpacity(0.4),
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(restoran.logoUrl, width: 80,),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('"${restoran.desc}"',
              style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Icon(Icons.star_outline_outlined, color: Colors.yellow,),
                  Text('${restoran.score}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(width: 15,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
