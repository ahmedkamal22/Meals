// ignore_for_file: constant_identifier_names

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class MealsModel {
  String? id;
  List<String>? mealCategories;
  String? title;
  String? imageUrl;
  List<String>? ingredients;
  List<String>? steps;
  int? duration;
  Complexity? complexity;
  Affordability? affordability;
  bool? isGlutenFree;
  bool? isLactoseFree;
  bool? isVegan;
  bool? isVegetarian;

  MealsModel(
      {required this.id,
      required this.mealCategories,
      required this.title,
      required this.imageUrl,
      required this.ingredients,
      required this.steps,
      required this.duration,
      required this.complexity,
      required this.affordability,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.isVegan,
      required this.isVegetarian});
}
