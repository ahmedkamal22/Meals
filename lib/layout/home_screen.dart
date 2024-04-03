import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/layout/cubit/cubit.dart';
import 'package:meals/layout/cubit/states.dart';
import 'package:meals/models/meals_model.dart';
import 'package:meals/modules/filters_screen.dart';
import 'package:meals/shared/components/components.dart';
import 'package:meals/shared/components/constants.dart';
import 'package:meals/shared/cubit/cubit.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.filteredItems, this.meals});

  Map<Filter, bool> filteredItems = initialFilters;
  List<MealsModel>? meals;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealsCubit, MealsStates>(
      listener: (BuildContext context, MealsStates state) {},
      builder: (BuildContext context, MealsStates state) {
        var cubit = MealsCubit.get(context);
        availableMeals = dummyMeals.where((element) {
          if (!filteredItems.containsValue(true)) {
            return true;
          }
          if (filteredItems[Filter.gluten] == false &&
              element.isGlutenFree == false) {
            return false;
          }
          if (filteredItems[Filter.lactose] == false &&
              element.isLactoseFree == false) {
            return false;
          }
          if (filteredItems[Filter.vegetarian] == false &&
              element.isVegetarian == false) {
            return false;
          }
          if (filteredItems[Filter.vegan] == false &&
              element.isVegan == false) {
            return false;
          }
          return true;
        }).toList();
        return Scaffold(
          appBar: AppBar(
            title: Text(cubit.titles[cubit.currentIndex]),
            actions: [
              IconButton(
                  onPressed: () {
                    AppCubit.get(context).changeAppMode();
                  },
                  icon: const Icon(Icons.change_circle_outlined))
            ],
          ),
          drawer: customDrawer(
              context: context,
              navigation: () {
                navigateTo(
                    context,
                    FiltersScreen(
                      currentFilters: filteredItems,
                    ));
              }),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeBottomNav(index);
            },
            items: cubit.items,
          ),
        );
      },
    );
  }
}
