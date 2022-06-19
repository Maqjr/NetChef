import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
   final IconData lefticon;
   final IconData righticon;
   final Function? leftcallback;
   CustomAppBar(this.lefticon,this.righticon,{this.leftcallback});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 5,
        right: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: leftcallback != null ? ()=> leftcallback!() : null,
            child: _buildIcon(lefticon),
          ),
          _buildIcon(righticon),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon){
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(icon),

    );
  }
  }


