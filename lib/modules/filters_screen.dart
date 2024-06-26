import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/generated/l10n.dart';
import 'package:meals/layout/cubit/cubit.dart';
import 'package:meals/layout/cubit/states.dart';
import 'package:meals/layout/home_screen.dart';
import 'package:meals/shared/components/components.dart';
import 'package:meals/shared/components/constants.dart';

class FiltersScreen extends StatelessWidget {
  FiltersScreen({super.key, required this.currentFilters});

  Map<Filter, bool> currentFilters;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealsCubit, MealsStates>(
      listener: (BuildContext context, MealsStates state) {},
      builder: (BuildContext context, MealsStates state) {
        var cubit = MealsCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).Meals_Filters),
            leading: IconButton(
                onPressed: () {
                  navigateAndFinish(
                      context,
                      HomeScreen(
                        filteredItems: {
                          Filter.gluten: cubit.isGluten,
                          Filter.lactose: cubit.isLactose,
                          Filter.vegetarian: cubit.isVegetarian,
                          Filter.vegan: cubit.isVegan,
                        },
                      ));
                },
                icon: const Icon(Icons.arrow_back_ios)),
          ),
          body: WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: Column(
              children: [
                defaultSwitchListTile(
                  context: context,
                  value: cubit.isGluten,
                  onChanged: (value) {
                    cubit.changeGlutenState();
                  },
                  text: S.of(context).Gluten_free,
                  subtitle: S.of(context).only_include_gluten_free_meals,
                ),
                defaultSwitchListTile(
                  context: context,
                  value: cubit.isLactose,
                  onChanged: (value) {
                    cubit.changeLactoseState();
                  },
                  text: S.of(context).Lactose_free,
                  subtitle: S.of(context).only_include_lactose_free_meals,
                ),
                defaultSwitchListTile(
                  context: context,
                  value: cubit.isVegetarian,
                  onChanged: (value) {
                    cubit.changeVegetarianState();
                  },
                  text: S.of(context).Vegetarian_free,
                  subtitle: S.of(context).only_include_vegetarian_free_meals,
                ),
                defaultSwitchListTile(
                  context: context,
                  value: cubit.isVegan,
                  onChanged: (value) {
                    cubit.changeVeganState();
                  },
                  text: S.of(context).Vegan_free,
                  subtitle: S.of(context).only_include_vegan_free_meals,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
