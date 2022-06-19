import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:netchef/comstants/colors.dart';
import 'package:netchef/login_screen.dart';
import 'package:netchef/model/model_user.dart';
import 'package:netchef/model/restaurant.dart';
import 'package:netchef/screenWidget/food_list.dart';
import 'package:netchef/screenWidget/restaurant_info.dart';
import 'package:netchef/splash_screen.dart';
import 'package:netchef/widgets/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'screenWidget/food_list_view.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selected=0;
  final pageController= PageController();
  final Restaurant restaurant= Restaurant.generateRestaurant();
  User? user =FirebaseAuth.instance.currentUser;
  UserModel loggedinUser = UserModel();

@override
  void InitState(){
    super.initState();
    FirebaseFirestore.instance.
  collection("users").
  doc(user!.uid).
  get().
  then((value) {
    this.loggedinUser = UserModel.fromMap(value.data());
    setState((){});

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(Icons.arrow_back_ios_new_outlined, Icons.search_outlined),
        RestaurantInfo(),
          FoodList(selected, (int index){
            setState((){
              selected= index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
              child: FoodListView(
                selected,
                  (int index){
                  setState((){
                    selected= index;
                  });

                  },
                pageController,
                restaurant
              ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(controller: pageController, count: restaurant.menu.length,
            effect: CustomizableEffect(dotDecoration: DotDecoration(
              width: 8,
              height: 8,
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8)
            ),
                activeDotDecoration: DotDecoration(
                  height: 10,
                  width: 10,
                  color: KbackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: DotBorder(
                    color: KprimaryColor,
                    padding: 2,
                    width: 2
                  )

                )
            ),
              onDotClicked: (index)=>pageController.jumpToPage(index),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          backgroundColor: KprimaryColor,
        elevation: 2,
        child: Icon(Icons.shopping_bag_outlined,
          color: Colors.black,
        size: 39,
        ),

      ),
    );








  }

  Future <void> logout(BuildContext context) async{

  await FirebaseAuth.instance.signOut();
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginScreen()));

}
}
