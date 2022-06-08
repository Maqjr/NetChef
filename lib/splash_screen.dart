import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();

}
class InitState extends State<SplashScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startTimer();


  }

  startTimer() async{
     var duration=Duration(seconds: 3);
     return new Timer(duration, loginRoute);
  }

  loginRoute(){
    Navigator.pushReplacement(this.context, MaterialPageRoute(
      builder: (context) => LoginScreen()
    ));
  }


  @override
  Widget build(BuildContext context) {
  return InitWidget();
  }

}

 Widget InitWidget() {
  return Scaffold(
  body: Stack(
  children: [
    Container(
    decoration: BoxDecoration(
    color: new Color(0xffF5591F),
    gradient: LinearGradient(
        colors: [new Color(0xffF5591F), new Color(0xffF2861E)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,

)
    ),
    ),
    Center(
      child: Container(
        child: Image.asset("images/netcheflogo.png"),
      ),
    ),
],
  ),
  );

}