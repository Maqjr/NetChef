
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:netchef/home_screen.dart';
import 'package:netchef/login_screen.dart';
import 'package:netchef/model/model_user.dart';
import 'package:netchef/splash_screen.dart';

class SignupScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignupScreen>{
  final _auth = FirebaseAuth.instance;
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
                validator: (value){
                  if(value!.isEmpty){
                    Fluttertoast.showToast(msg: "Name field is empty");
                    return ("kindly provide Name");
                  }
                  // if(value==RegExp("'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9]+.[a-z]'").hasMatch(value)){
                  //   return ("please enter a valid email");
                  // }
                  return null;
                },
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
                  validator: (value){

                  if(value!.isEmpty){
                Fluttertoast.showToast(msg: "email is empty");
                    return ("kindly provide email");
            }
                if(value==RegExp("'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9]+.[a-z]'").hasMatch(value)){
    return ("please enter a valid email");
    }
        return null;
                  },
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
                validator: (value){
                  if(value!.isEmpty){
                    Fluttertoast.showToast(msg: "phoneNumber field is empty");
                    return ("kindly provide phoneNumber");
                  }
                  // if(value==RegExp("'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9]+.[a-z]'").hasMatch(value)){
                  //   return ("please enter a valid email");
                  // }
                  return null;
                },
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
                validator: (value){
                  if(value!.isEmpty){
                    Fluttertoast.showToast(msg: "password field is empty");
                    return ("kindly provide password");
                  }
                  // if(value==RegExp("'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9]+.[a-z]'").hasMatch(value)){
                  //   return ("please enter a valid email");
                  // }
                  return null;
                },
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
                validator: (value){
                 if(confirmpasswordController.text.length > passwordController.text.length && passwordController.text !=value){
                   return "Password do not match";

    }
                  return null;
                },
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
                signup(emailController.text, passwordController.text)
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
  void signup(String email, String password) async{
    if(_formkey.currentState!.validate()){
      _auth.createUserWithEmailAndPassword(email: email, password: password).
    then((value) => { postDetails()
      }).catchError((e){
        Fluttertoast.showToast(msg: e!.message);
      });


    }



  }
  postDetails()async {
    FirebaseFirestore firebaseFirestore =FirebaseFirestore.instance;
    User? user= _auth.currentUser;
    UserModel userModel =  UserModel();
    userModel.email = user!.email;
    userModel.uid= user!.uid;
    userModel.firstName= nameController.text;
    userModel.phonenumber=phoneController.text;



    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created");
    
    Navigator.pushAndRemoveUntil((context), MaterialPageRoute(builder: (context)=> HomeScreen() ), (route) => false);

  }

}