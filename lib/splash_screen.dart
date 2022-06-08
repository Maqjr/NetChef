import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

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
  return AnimatedSplashScreen(splash: Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset("images/netcheflogo.png"),
      ),

      SizedBox(
            height: 20,
        ),
      Text(
        "Where anyone can be a Chef",
        // style: GoogleFonts.getFont('Dancing Script')
        style: GoogleFonts.dancingScript(
          fontSize: 25,
          color: Colors.black
        )


        ,

      ),
    ],
  ),
      backgroundColor: new Color(0xffF5591F),
      nextScreen: LoginScreen(),
    splashIconSize: 250,
    duration: 3000,
    splashTransition: SplashTransition.sizeTransition,
    pageTransitionType: PageTransitionType.leftToRightWithFade,
    animationDuration: const Duration(milliseconds: 800),





  );
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(65),
        ),
        child: Image.asset("images/netcheflogo.png"),
      ),
    ),
],
  ),
  );

}