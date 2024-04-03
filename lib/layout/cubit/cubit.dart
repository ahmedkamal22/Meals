import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/layout/cubit/states.dart';
import 'package:meals/models/meals_model.dart';
import 'package:meals/modules/categories_screen.dart';
import 'package:meals/modules/favourites_screen.dart';

class MealsCubit extends Cubit<MealsStates> {
  MealsCubit() : super(MealsInitialState());

  static MealsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  changeBottomNav(int index) {
    currentIndex = index;
    emit(MealsChangeBottomNavState());
  }

  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      label: "Categories",
      icon: Icon(Icons.set_meal),
    ),
    const BottomNavigationBarItem(
      label: "Favourites",
      icon: Icon(Icons.star),
    ),
  ];

  List<Widget> screens = [
    const CategoriesScreen(),
    FavouritesScreen(),
  ];

  List<String> titles = [
    "Pick your category",
    "Favourites",
  ];

  List<MealsModel> favourites = [];

  changeFavourites(MealsModel meal) {
    final isExisting = favourites.contains(meal);
    if (isExisting) {
      favourites.remove(meal);
      emit(MealsRemoveFromFavouritesState());
    } else {
      favourites.add(meal);
      emit(MealsAddToFavouritesState());
    }
  }
}
