import 'package:flutter/material.dart';
import 'package:netchef/comstants/colors.dart';
import 'package:netchef/model/restaurant.dart';


class FoodList extends StatelessWidget {
  final int select;
  final Function callback;
  final Restaurant restaurant;


  FoodList(this.select, this.callback, this.restaurant);


  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();

    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: ()=> callback(index),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: select==index ? KprimaryColor : Colors.white,
              ),
              child: Text(
                category[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          separatorBuilder: (_,index)=> SizedBox(width: 20,),
          itemCount: category.length
      ),
    );
  }
}
