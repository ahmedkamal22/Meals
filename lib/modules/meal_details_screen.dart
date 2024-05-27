import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/generated/l10n.dart';
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
          showSnackBar(context, S.of(context).Added_To_Favourites);
        } else if (state is MealsRemoveFromFavouritesState) {
          showSnackBar(context, S.of(context).Removed_From_Favourites);
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
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios)),
            actions: [
              IconButton(
                onPressed: () {
                  cubit.changeFavourites(meals!);
                },
                icon: AnimatedSwitcher(
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  transitionBuilder: (child, animation) => RotationTransition(
                    turns: Tween<double>(
                      begin: 0.8,
                      end: 1.0,
                    ).animate(animation),
                    child: child,
                  ),
                  child: Icon(
                    cubit.isItInFav(meals!)
                        ? Icons.star
                        : Icons.star_border_outlined,
                    color: cubit.isItInFav(meals!)
                        ? Colors.amberAccent
                        : Colors.grey,
                    // key: ValueKey(state is MealsAddToFavouritesState),
                  ),
                ),
              ),
            ],
          ),
          body: buildIngredientsItem(context, meals!),
        );
      },
    );
  }
}
