class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highLight;

  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.highLight = false});

  static List<Food> generateRecommendFoods() {
    return [
      Food(
          'assets/images/dish1.png',
          'No1. in Sales',
          'Soba Soup',
          '50 min',
          4.8,
          '324 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is a Japanse noodle soup'),
      Food(
          'assets/images/vegetarian-acili.png',
          'Italyan mətbəxi',
          'Acılı Vegetarian',
          '50 min',
          4.8,
          '324 kcal',
          14,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is aJapanse noodle soup'),
      Food(
          'assets/images/dish2.png',
          'Azərbaycan mətbəxi',
          'Soba Soup',
          '50 min',
          4.8,
          '324 kcal',
          7,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is aJapanse noodle soup'),
      Food(
          'assets/images/chicken_barbekyu.jpg',
          'Italyan mətbəxi',
          'Çiken Barbekyu',
          '50 min',
          4.8,
          '324 kcal',
          15,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is aJapanse noodle soup'),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'assets/images/dish1.png',
          'İtalyan mətbəxi',
          'İtallian Spagetti',
          '50 min',
          4.8,
          '324 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is aJapanse noodle soup'),
      Food(
          'assets/images/burger2.jfif',
          'Azərbaycan mətbəxi',
          'Bekon Burger',
          '50 min',
          4.8,
          '324 kcal',
          7,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is aJapanse noodle soup'),
      Food(
          'assets/images/vegetarian-acili.png',
          'Italyan mətbəxi',
          'Acılı Vegetarian',
          '50 min',
          4.8,
          '324 kcal',
          14,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is aJapanse noodle soup'),
    ];
  }
  static List<Food> generateBurgerFoods() {
    return [
      Food(
          'assets/images/burger1.jfif',
          'İtalyan mətbəxi',
          'Leydi Burger',
          '50 min',
          4.8,
          '324 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is aJapanse noodle soup'),
      Food(
          'assets/images/burger2.jfif',
          'Azərbaycan mətbəxi',
          'Bekon Burger',
          '50 min',
          4.8,
          '324 kcal',
          7,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is aJapanse noodle soup'),
    ];
  }
  static List<Food> generatePizzaFoods() {
    return [
      Food(
          'assets/images/american-hot.png',
          'Amerikan mətbəxi',
          'Amerikan Hot',
          '50 min',
          4.8,
          '324 kcal',
          13,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is aJapanse noodle soup'),
      Food(
          'assets/images/chicken_barbekyu.jpg',
          'Italyan mətbəxi',
          'Çiken Barbekyu',
          '50 min',
          4.8,
          '324 kcal',
          15,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is aJapanse noodle soup'),
      Food(
          'assets/images/vegetarian-acili.png',
          'Italyan mətbəxi',
          'Acılı Vegetarian',
          '50 min',
          4.8,
          '324 kcal',
          14,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            },
          ],
          'Simply put, ramen is aJapanse noodle soup'),
    ];
  }
}
