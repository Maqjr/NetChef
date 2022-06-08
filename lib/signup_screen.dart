
import 'package:flutter/material.dart';
import 'package:netchef/login_screen.dart';
import 'package:netchef/splash_screen.dart';

class SignupScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignupScreen>{
  final _formkey=GlobalKey<FormState>();
  final TextEditingController emailController= new TextEditingController();
  final TextEditingController nameController= new TextEditingController();
  final TextEditingController phoneController= new TextEditingController();
  final TextEditingController passwordController= new TextEditingController();
  final TextEditingController confirmpasswordController= new TextEditingController();
  @override
  Widget build(BuildContext context) {
   return InitWidget();
  }

  Widget InitWidget(){
  return Scaffold(
    body: SingleChildScrollView(
      child: Form(
        key: _formkey,
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
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.topLeft,
                        child: IconButton(onPressed: (){
                          Navigator.of(context).pop();
                        },
                            icon: Icon(Icons.arrow_back))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("images/netcheflogo.png"),
                      ),
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
              child: TextFormField(
                autofocus: false,
                controller: nameController,
                keyboardType: TextInputType.name,
                onSaved: (value){
                 nameController.text = value!;
                },
                textInputAction: TextInputAction.next,
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
              child: TextFormField(
                autofocus: false,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onSaved: (value){
             emailController.text = value!;
                },
                textInputAction: TextInputAction.next,
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
              child: TextFormField(
                autofocus: false,
                controller: phoneController,
                keyboardType: TextInputType.number,
                onSaved: (value){
                  value= phoneController.text;
                },
                textInputAction: TextInputAction.next,
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
              child: TextFormField(
                autofocus: false,
                controller: passwordController,
                obscureText: true,
                onSaved: (value){
                   passwordController.text = value!;
                },
                textInputAction: TextInputAction.next,
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
            ),Container(
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
              child: TextFormField(
                autofocus: false,
                controller: confirmpasswordController,
                obscureText: true,
                onSaved: (value){
                   confirmpasswordController.text= value!;
                },
                textInputAction: TextInputAction.done,
                cursorColor: Color(0xffF5591F),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Color(0xffF5591F),
                  ),
                  hintText: "Confirm Password",
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
    ),
  );

  }

}