import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/layout/cubit/cubit.dart';
import 'package:meals/layout/cubit/states.dart';
import 'package:meals/models/meals_model.dart';
import 'package:meals/shared/components/components.dart';

class MealDetailsScreen extends StatelessWidget {
  MealDetailsScreen({
    super.key,
    required this.meals,
  });

  MealsModel? meals;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealsCubit, MealsStates>(
      listener: (BuildContext context, MealsStates state) {
        if (state is MealsAddToFavouritesState) {
          showSnackBar(context, "Added To Favourites Successfully");
        } else if (state is MealsRemoveFromFavouritesState) {
          showSnackBar(context, "Removed From Favourites Successfully");
        }
      },
      builder: (BuildContext context, MealsStates state) {
        var cubit = MealsCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            title: Text(
              "${meals!.title}",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                  ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    cubit.changeFavourites(meals!);
                  },
                  icon: const Icon(
                    Icons.star,
                  )),
            ],
          ),
          body: buildIngredientsItem(context, meals!),
        );
      },
    );
  }
}
