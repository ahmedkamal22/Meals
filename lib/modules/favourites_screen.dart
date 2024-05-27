import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/generated/l10n.dart';
import 'package:meals/layout/cubit/cubit.dart';
import 'package:meals/layout/cubit/states.dart';
import 'package:meals/models/meals_model.dart';
import 'package:meals/shared/components/components.dart';

class FavouritesScreen extends StatelessWidget {
  FavouritesScreen({super.key, this.meals});

  List<MealsModel>? meals;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealsCubit, MealsStates>(
      listener: (BuildContext context, MealsStates state) {},
      builder: (BuildContext context, MealsStates state) {
        var cubit = MealsCubit.get(context);
        return ConditionalBuilder(
          condition: cubit.favourites.isNotEmpty,
          builder: (context) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) => Dismissible(
                key: ValueKey(cubit.favourites[index]),
                onDismissed: (direction) {
                  cubit.changeFavourites(cubit.favourites[index]);
                },
                child: buildMealItem(context, cubit.favourites[index])),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              height: 15,
            ),
            itemCount: cubit.favourites.length,
          ),
          fallback: (context) => Center(
            child: defaultTestScreen(text: S.of(context).notInFavourites),
          ),
        );
      },
    );
  }
}
