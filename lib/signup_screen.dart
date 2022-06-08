
import 'package:flutter/material.dart';
import 'package:netchef/login_screen.dart';
import 'package:netchef/splash_screen.dart';

class SignupScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignupScreen>{
  @override
  Widget build(BuildContext context) {
   return InitWidget();
  }

  Widget InitWidget(){
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(90)
              ),
              gradient: LinearGradient(
                colors: [(new Color(0xffF5591F)),(new Color(0xffF2861E))],
                begin: Alignment.topCenter,
                end:  Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Image.asset("images/netcheflogo.png"),
                    height: 90,
                    width: 90,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20,right: 20),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 70, left: 20,right: 20 ),
            padding: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Color(0xffEEEEEE),

              )],
            ),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Color(0xffF5591F),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Color(0xffF5591F),
                ),
                hintText: "Enter Full Name",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,

              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20,right: 20 ),
            padding: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Color(0xffEEEEEE),

              )],
            ),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Color(0xffF5591F),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color(0xffF5591F),
                ),
                hintText: "Enter Email",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,

              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20,right: 20 ),
            padding: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Color(0xffEEEEEE),

              )],
            ),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Color(0xffF5591F),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.phone,
                  color: Color(0xffF5591F),
                ),
                hintText: "Enter Phone Number",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,

              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20,right: 20 ),
            padding: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Color(0xffEEEEEE),

              )],
            ),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Color(0xffF5591F),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.vpn_key,
                  color: Color(0xffF5591F),
                ),
                hintText: "Enter Password",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,

              ),
            ),
          ),
          GestureDetector(
            onTap: ()=>{
              /*write your onclick here   */
            },
            child: Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 70) ,
              padding:  EdgeInsets.only(left: 20,right: 20),
              alignment: Alignment.center,
              height: 54,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [(new Color(0xffF5591F)), (new Color(0xffF2861E))],
                    begin: Alignment.centerLeft,
                    end:  Alignment.centerRight
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE),

                )],

              ),
              child: Text(
                "Register Now",
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                    "Already Have an Account?"
                ),
                GestureDetector(
                  onTap: ()=> {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => LoginScreen()
                    ))

                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Color(0xffF5591F),

                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    ),
  );

  }

}