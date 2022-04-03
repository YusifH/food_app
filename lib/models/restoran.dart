import 'food.dart';

class Restoran{
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restoran(this.name, this.waitTime, this.distance, this.label, this.logoUrl, this.desc, this.score,this.menu);

  static Restoran generateRestoran(){
    return Restoran('Bibinin & Təndiri', '20-30 min', '2.4 km', 'Nərimanov', 'assets/images/res_logo.png', 'Milli və Avropa mətbəxi', 4.7,
    {
      'Təkliflər': Food.generateRecommendFoods(),
      'Populyar': Food.generatePopularFoods(),
      'Burger': Food.generateBurgerFoods(),
      'Pizza': Food.generatePizzaFoods(),
    }
    );
  }
}