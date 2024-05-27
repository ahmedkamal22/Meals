import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/layout/cubit/states.dart';
import 'package:meals/models/meals_model.dart';
import 'package:meals/modules/categories_screen.dart';
import 'package:meals/modules/favourites_screen.dart';
import 'package:meals/shared/components/constants.dart';

class MealsCubit extends Cubit<MealsStates> {
  MealsCubit() : super(MealsInitialState());

  static MealsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  changeBottomNav(int index) {
    currentIndex = index;
    emit(MealsChangeBottomNavState());
  }

  List<Widget> screens = [
    CategoriesScreen(),
    FavouritesScreen(),
  ];

  List<String> titles = [
    "Pick your category",
    "Favourites",
  ];

  List<MealsModel> favourites = [];
  Map<String, bool> changeFavIconColor = {};

  changeFavourites(MealsModel meal) {
    final isExisting = favourites.contains(meal);
    if (isExisting) {
      favourites.remove(meal);
      changeFavIconColor[meal.id!] = false;
      emit(MealsRemoveFromFavouritesState());
    } else {
      favourites.add(meal);
      changeFavIconColor[meal.id!] = true;
      emit(MealsAddToFavouritesState());
    }
  }

  bool isItInFav(MealsModel meal) {
    return changeFavIconColor[meal.id] ?? false;
  }

  selectFilters({required Map<Filter, bool> filtered, required context}) {
    availableMeals = setDummyMeals(context).where((element) {
      if (!filtered.containsValue(true)) {
        return true;
      }
      if (filtered[Filter.gluten] == false && element.isGlutenFree == false) {
        return false;
      }
      if (filtered[Filter.lactose] == false && element.isLactoseFree == false) {
        return false;
      }
      if (filtered[Filter.vegetarian] == false &&
          element.isVegetarian == false) {
        return false;
      }
      if (filtered[Filter.vegan] == false && element.isVegan == false) {
        return false;
      }
      return true;
    }).toList();
  }

  bool isGluten = false;
  bool isLactose = false;
  bool isVegetarian = false;
  bool isVegan = false;

  changeGlutenState() {
    isGluten = !isGluten;
    emit(MealsChangeGlutenState());
  }

  changeLactoseState() {
    isLactose = !isLactose;
    emit(MealsChangeLactoseState());
  }

  changeVegetarianState() {
    isVegetarian = !isVegetarian;
    emit(MealsChangeVegetarianState());
  }

  changeVeganState() {
    isVegan = !isVegan;
    emit(MealsChangeVeganState());
  }
}
