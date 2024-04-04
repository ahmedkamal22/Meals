import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/layout/cubit/cubit.dart';
import 'package:meals/layout/cubit/states.dart';
import 'package:meals/models/meals_model.dart';
import 'package:meals/modules/filters_screen.dart';
import 'package:meals/modules/settings_screen.dart';
import 'package:meals/shared/components/components.dart';
import 'package:meals/shared/components/constants.dart';

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
        cubit.selectFilters(filtered: filteredItems);
        return Scaffold(
          appBar: AppBar(
            title: Text(cubit.titles[cubit.currentIndex]),
          ),
          drawer: customDrawer(
            context: context,
            filterNavigation: () {
              navigateTo(
                context,
                FiltersScreen(
                  currentFilters: filteredItems,
                ),
              );
            },
            settingsNavigation: () {
              navigateTo(
                context,
                SettingsScreen(),
              );
            },
          ),
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
