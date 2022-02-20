
class Recipe {
  String label;
  String imgUrl;
  int servings;
  List<Ingredient> ingridients;

  Recipe(
      this.label,
      this.imgUrl,
      this.servings,
      this.ingridients
      );

  static List<Recipe> samples = [
  Recipe(
  'Spaghetti and Meatballs',
  'assets/spaghetti_meatballs.jpg',
    4,
    [
      Ingredient(1, 'box', 'Spaghetti',),
      Ingredient(4, '', 'Frozen Meatballs',),
      Ingredient(0.5, 'jar', 'sauce',),
    ],
  ),
  Recipe(
  'Tomato Soup',
  'assets/tomato_soup.jpg',
    2,
    [
      Ingredient(1, 'can', 'Tomato soup',)
    ],
  ),
  Recipe(
  'Grilled Cheese',
  'assets/grilled_cheese.jpg',
    1,
    [
      Ingredient(2, 'slices', "Cheese",),
      Ingredient(2, 'slices', "Bread",),
    ],
  ),
  Recipe(
  'Chocolate Chip Cookies',
  'assets/chocolate_chip.jpg',
    24,
    [
      Ingredient(4, 'cups', 'flour',),
      Ingredient(2, 'cups', 'sugar',),
      Ingredient(0.5, 'cups', 'chocolate chips',),
    ],
  ),
  Recipe(
  'Taco Salad',
  'assets/taco_salad.jpg',
    1,
    [
      Ingredient(4, 'oz', 'nachos',),
      Ingredient(3, 'oz', 'taco meat',),
      Ingredient(0.5, 'cup', 'cheese',),
      Ingredient(0.25, 'cup', 'chopped tomatoes',),
    ],
  ),
  ];
}

class Ingredient {
  double quanity;
  String measure;
  String name;

  Ingredient(
      this.quanity,
      this.measure,
      this.name
      );
}