class Food{
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String,String>> ingredients;
  String about;
  bool highLight;

  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about, {this.highLight=false});

  static List<Food> generateRecommendFood(){
    return[
      Food('images/ingre1.png',
          'No 1 . in sales', 'Soba Soup', '50 min', 4.8, '325 Kcal', 350, 1, [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shromp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },

          ],
          'simply put ramen in the soup', highLight: true
      ),Food('images/ingre1.png',
          'No 1 . in sales', 'Soba Soup', '50 min', 4.8, '325 Kcal', 350, 1, [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shromp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },

          ],
          'simply put ramen in the soup', highLight: true
      ),Food('images/ingre1.png',
          'No 1 . in sales', 'Soba Soup', '50 min', 4.8, '325 Kcal', 350, 1, [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shromp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },

          ],
          'simply put ramen in the soup', highLight: true
      ),Food('images/ingre1.png',
          'No 1 . in sales', 'Soba Soup', '50 min', 4.8, '325 Kcal', 350, 1, [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shromp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },

          ],
          'simply put ramen in the soup', highLight: true
      ),Food('images/ingre1.png',
          'No 1 . in sales', 'Soba Soup', '50 min', 4.8, '325 Kcal', 350, 1, [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shromp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },

          ],
          'simply put ramen in the soup', highLight: true
      ),
    ];
  }

  static List<Food> generatePopularFood(){
    return[
      Food('images/ingre1.png',
          'No 1 . in sales', 'Soba Soup', '50 min', 4.8, '325 Kcal', 350, 1, [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shromp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },

          ],
          'simply put ramen in the soup', highLight: true
      ),Food('images/ingre1.png',
          'No 1 . in sales', 'Soba Soup', '50 min', 4.8, '325 Kcal', 350, 1, [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
                'Shromp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },

          ],
          'simply put ramen in the soup', highLight: true
      ),Food('images/ingre1.png',
          'No 1 . in sales', 'Soba Soup', '50 min', 4.8, '325 Kcal', 350, 1, [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
                'Shromp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },

          ],
          'simply put ramen in the soup', highLight: true
      ),Food('images/ingre1.png',
          'No 1 . in sales', 'Soba Soup', '50 min', 4.8, '325 Kcal', 350, 1, [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
                'Shromp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },

          ],
          'simply put ramen in the soup', highLight: true
      ),Food('images/ingre1.png',
          'No 1 . in sales', 'Soba Soup', '50 min', 4.8, '325 Kcal', 350, 1, [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shromp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },

          ],
          'simply put ramen in the soup', highLight: true
      ),
    ];


}



}