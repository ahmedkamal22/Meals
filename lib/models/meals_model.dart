// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:meals/generated/l10n.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

extension ComplexityExtension on Complexity {
  String localized(BuildContext context) {
    switch (this) {
      case Complexity.Simple:
        return S
            .of(context)
            .Simple; // Assuming AppLocalizations is your generated localization class
      case Complexity.Challenging:
        return S.of(context).Challenging;
      case Complexity.Hard:
        return S.of(context).Hard;
      default:
        return '';
    }
  }
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

extension AffordabilityExtension on Affordability {
  String localized(BuildContext context) {
    switch (this) {
      case Affordability.Affordable:
        return S
            .of(context)
            .Affordable; // Assuming AppLocalizations is your generated localization class
      case Affordability.Pricey:
        return S.of(context).Pricey;
      case Affordability.Luxurious:
        return S.of(context).Luxurious;
      default:
        return '';
    }
  }
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
