import 'package:netchef/model/food.dart';

class Restaurant{
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;

  Map<String, List<Food>> menu;

  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menu);

  static Restaurant generateRestaurant(){
    return Restaurant('Chinese Restaurant',
        '20-30 min',
        '2.4 Km',
        'Restaurant',
        'images/res_logo.png',
        'The ramen is extremely delicious',
        4.7,
        {
          'Recommend': Food.generateRecommendFood(),
          'Popular': Food.generatePopularFood(),
          'Noodles': [],
          'Pizza': [],
        }
    );

  }

}