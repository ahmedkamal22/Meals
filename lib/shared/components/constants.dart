import 'package:flutter/material.dart';
import 'package:meals/generated/l10n.dart';
import 'package:meals/models/category_model.dart';
import 'package:meals/models/meals_model.dart';
import 'package:meals/shared/cubit/cubit.dart';

setCategories(context) {
  return [
    CategoryModel(id: 'c1', title: S.of(context).Italian, color: Colors.purple),
    CategoryModel(id: 'c2', title: S.of(context).quickEasy, color: Colors.red),
    CategoryModel(
        id: 'c3', title: S.of(context).Hamburgers, color: Colors.orange),
    CategoryModel(id: 'c4', title: S.of(context).German, color: Colors.amber),
    CategoryModel(
        id: 'c5', title: S.of(context).lightLovely, color: Colors.blue),
    CategoryModel(id: 'c6', title: S.of(context).Exotic, color: Colors.green),
    CategoryModel(
        id: 'c7', title: S.of(context).Breakfast, color: Colors.lightBlue),
    CategoryModel(
        id: 'c8', title: S.of(context).Asian, color: Colors.lightGreen),
    CategoryModel(id: 'c9', title: S.of(context).French, color: Colors.pink),
    CategoryModel(
        id: 'c10', title: S.of(context).Summer_Luxurious, color: Colors.teal),
  ];
}

setDummyMeals(context) {
  return [
    MealsModel(
      id: 'm1',
      mealCategories: [
        'c1',
        'c2',
      ],
      title: S.of(context).Spaghetti_with_Tomato_Sauce,
      affordability: Affordability.Affordable,
      complexity: Complexity.Simple,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      duration: 20,
      ingredients: [
        S.of(context).Four_Tomatoes,
        S.of(context).One_Tablespoon_of_Olive_Oil,
        S.of(context).One_Onion,
        S.of(context).Two_Hundred_Half_Spaghetti,
        S.of(context).Spices,
        S.of(context).Cheese_optional
      ],
      steps: [
        S.of(context).Cut_the_tomatoes_and_the_onion_into_small_pieces,
        S.of(context).Boil_some_water_add_salt_to_it_once_it_boils,
        S
            .of(context)
            .Put_the_spaghetti_into_the_boiling_water_they_should_be_done_in_about_Ten_to_Twelve_minutes,
        S
            .of(context)
            .In_the_meantime_heated_up_some_olive_oil_and_add_the_cut_onion,
        S
            .of(context)
            .After_Two_minutes_add_the_tomato_pieces_salt_pepper_and_your_other_spices,
        S.of(context).The_sauce_will_be_done_once_the_spaghetti_are,
        S.of(context).Feel_free_to_add_some_cheese_on_top_of_the_finished_dish,
      ],
      isGlutenFree: false,
      isVegan: true,
      isVegetarian: true,
      isLactoseFree: true,
    ),
    MealsModel(
      id: 'm2',
      mealCategories: [
        'c2',
      ],
      title: S.of(context).Toast_Hawaii,
      affordability: Affordability.Affordable,
      complexity: Complexity.Simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      duration: 10,
      ingredients: [
        S.of(context).One_Slice_White_Bread,
        S.of(context).One_Slice_Ham,
        S.of(context).One_Slice_Pineapple,
        S.of(context).One_Two_Slices_of_Cheese,
        S.of(context).Butter,
      ],
      steps: [
        S.of(context).Butter_one_side_of_the_white_bread,
        S.of(context).Layer_ham_the_pineapple_and_cheese_on_the_white_bread,
        S
            .of(context)
            .Bake_the_toast_for_round_about_Ten_minutes_in_the_oven_at_Two_Hundred_Temp,
      ],
      isGlutenFree: false,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: false,
    ),
    MealsModel(
      id: 'm3',
      mealCategories: [
        'c2',
        'c3',
      ],
      title: S.of(context).Classic_Hamburger,
      affordability: Affordability.Pricey,
      complexity: Complexity.Simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
      duration: 45,
      ingredients: [
        S.of(context).Three_Hundred_Gram_Cattle_Hack,
        S.of(context).One_Tomato,
        S.of(context).One_Cucumber,
        S.of(context).One_Onion,
        S.of(context).Ketchup,
        S.of(context).Two_Burger_Buns,
      ],
      steps: [
        S.of(context).Form_Two_patties,
        S.of(context).Fry_the_patties_for_c_Four_minutes_on_each_side,
        S.of(context).Quickly_fry_the_buns_for_c_One_minute_on_each_side,
        S.of(context).Brush_buns_with_ketchup,
        S.of(context).Serve_burger_with_tomato_cucumber_and_onion,
      ],
      isGlutenFree: false,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: true,
    ),
    MealsModel(
      id: 'm4',
      mealCategories: [
        'c4',
      ],
      title: S.of(context).Wiener_Schnitzel,
      affordability: Affordability.Luxurious,
      complexity: Complexity.Challenging,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
      duration: 60,
      ingredients: [
        S.of(context).Eight_Veal_Cutlets,
        S.of(context).Four_Eggs,
        S.of(context).Two_Hundred_Gram_Bread_Crumbs,
        S.of(context).Hundred_Gram_Flour,
        S.of(context).Three_Hundred_ML_Butter,
        S.of(context).Hundred_Gram_Vegetable_Oil,
        S.of(context).Salt,
        S.of(context).Lemon_Slices,
      ],
      steps: [
        S
            .of(context)
            .Tenderize_the_veal_to_about_Two_Four_MM_and_salt_on_both_sides,
        S.of(context).On_a_flat_plate_stir_the_eggs_briefly_with_a_fork,
        S
            .of(context)
            .Lightly_coat_the_cutlets_in_flour_then_dip_into_the_egg_and_finally_coat_in_breadcrumbs,
        S
            .of(context)
            .Heat_the_butter_and_oil_in_a_large_pan_allow_the_fat_to_get_very_hot_and_fry_the_schnitzels_until_golden_brown_on_both_sides,
        S
            .of(context)
            .Make_sure_to_toss_the_pan_regularly_so_that_the_schnitzels_are_surrounded_by_oil_and_the_crumbing_becomes_fluffy,
        S
            .of(context)
            .Remove_and_drain_on_kitchen_paper_Fry_the_parsley_in_the_remaining_oil_and_drain,
        S
            .of(context)
            .Place_the_schnitzels_on_warmed_plate_and_serve_garnished_with_parsley_and_slices_of_lemon,
      ],
      isGlutenFree: false,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: false,
    ),
    MealsModel(
      id: 'm5',
      mealCategories: [
        'c2'
            'c5',
        'c10',
      ],
      title: S.of(context).Salad_with_Smoked_Salmon,
      affordability: Affordability.Luxurious,
      complexity: Complexity.Simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
      duration: 15,
      ingredients: [
        S.of(context).Arugula,
        S.of(context).Lambs_Lettuce,
        S.of(context).Parsley,
        S.of(context).Fennel,
        S.of(context).Two_Hundred_Gram_Smoked_Salmon,
        S.of(context).Mustard,
        S.of(context).Balsamic_Vinegar,
        S.of(context).Olive_Oil,
        S.of(context).Salt_and_Pepper,
      ],
      steps: [
        S.of(context).Wash_and_cut_salad_and_herbs,
        S.of(context).Dice_the_salmon,
        S.of(context).Process_mustard_vinegar_and_olive_oil_into_a_dressing,
        S.of(context).Prepare_the_salad,
        S.of(context).Add_salmon_cubes_and_dressing,
      ],
      isGlutenFree: true,
      isVegan: false,
      isVegetarian: true,
      isLactoseFree: true,
    ),
    MealsModel(
      id: 'm6',
      mealCategories: [
        'c6',
        'c10',
      ],
      title: S.of(context).Delicious_Orange_Mousse,
      affordability: Affordability.Affordable,
      complexity: Complexity.Hard,
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      duration: 240,
      ingredients: [
        S.of(context).Gelatin_Sheets,
        S.of(context).Orange_Juice,
        S.of(context).Sugar,
        S.of(context).Yoghurt,
        S.of(context).Cream,
        S.of(context).Orange_Peel,
      ],
      steps: [
        S.of(context).Dissolve_Gelatin,
        S.of(context).Add_Orange_Juice_and_Sugar,
        S.of(context).Take_Pot_Off_the_Stove,
        S.of(context).Add_Yoghurt,
        S.of(context).Stir_Gelatin_Under_Remaining_Yoghurt,
        S.of(context).Cool_in_Refrigerator,
        S.of(context).Whip_Cream,
        S.of(context).Lift_Cream_Under_Orange_Mass,
        S.of(context).Cool_Down_Again,
        S.of(context).Serve_with_Orange_Peel,
      ],
      isGlutenFree: true,
      isVegan: false,
      isVegetarian: true,
      isLactoseFree: false,
    ),
    MealsModel(
      id: 'm7',
      mealCategories: [
        'c7',
      ],
      title: S.of(context).Pancakes,
      affordability: Affordability.Affordable,
      complexity: Complexity.Simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
      duration: 20,
      ingredients: [
        S.of(context).Flour,
        S.of(context).Baking_Powder,
        S.of(context).Salt,
        S.of(context).White_Sugar,
        S.of(context).Milk,
        S.of(context).Egg,
        S.of(context).Butter,
      ],
      steps: [
        S.of(context).Mix_Ingredients,
        S.of(context).Make_Well_and_Mix,
        S.of(context).Heat_Griddle,
        S.of(context).Pour_Batter,
      ],
      isGlutenFree: true,
      isVegan: false,
      isVegetarian: true,
      isLactoseFree: false,
    ),
    MealsModel(
      id: 'm8',
      mealCategories: [
        'c8',
      ],
      title: S.of(context).Creamy_Indian_Chicken_Curry,
      affordability: Affordability.Pricey,
      complexity: Complexity.Challenging,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
      duration: 35,
      ingredients: [
        S.of(context).Chicken_Breasts,
        S.of(context).Onion,
        S.of(context).Garlic,
        S.of(context).Ginger,
        S.of(context).Almonds,
        S.of(context).Cayenne_Pepper,
        S.of(context).Coconut_Milk,
      ],
      steps: [
        S.of(context).Slice_and_Fry_Chicken,
        S.of(context).Process_Onion_Garlic_Ginger,
        S.of(context).Add_Spices,
        S.of(context).Cook_with_Water,
        S.of(context).Add_Coconut_Milk,
        S.of(context).Serve_with_Rice,
      ],
      isGlutenFree: true,
      isVegan: false,
      isVegetarian: false,
      isLactoseFree: true,
    ),
    MealsModel(
      id: 'm9',
      mealCategories: [
        'c9',
      ],
      title: S.of(context).Chocolate_Souffle,
      affordability: Affordability.Affordable,
      complexity: Complexity.Hard,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
      duration: 45,
      ingredients: [
        S.of(context).Melted_Butter,
        S.of(context).Dark_Chocolate,
        S.of(context).Flour_for_Souffles,
        S.of(context).Cold_Milk,
        S.of(context).Salt_and_Pepper_for_Souffles,
        S.of(context).Cayenne_Pepper_for_Souffles,
        S.of(context).Egg_Yolk,
        S.of(context).Egg_Whites,
        S.of(context).Cream_of_Tartar,
        S.of(context).White_Sugar,
      ],
      steps: [
        S.of(context).Preheat_Oven,
        S.of(context).Prepare_Ramekins,
        S.of(context).Coat_Ramekins,
        S.of(context).Melt_Chocolate,
        S.of(context).Place_bowl_over_a_pan_cups,
        S.of(context).Prepare_Chocolate_Mixture,
        S.of(context).Whisk_In_Milk,
        S.of(context).Add_Seasoning_to_Chocolate,
        S.of(context).Leave_bowl_above_the_hot_water,
        S.of(context).Place_egg_whites_in_a_mixing_bowl,
        S.of(context).Add_sugar_whisk,
        S.of(context).Whisk_in_the_rest,
        S.of(context).Transfer_a_little_less,
        S.of(context).Mix_until_egg_whites,
        S.of(context).Add_the_rest_of_the_egg,
        S.of(context).Stop_mixing_after_the_egg_white_disappears,
        S.of(context).Bake_in_preheated_oven_until_scuffles,
      ],
      isGlutenFree: true,
      isVegan: false,
      isVegetarian: true,
      isLactoseFree: false,
    ),
    MealsModel(
      id: 'm10',
      mealCategories: [
        'c2',
        'c5',
        'c10',
      ],
      title: S.of(context).Asparagus_Salad_with_Cherry_Tomatoes,
      affordability: Affordability.Luxurious,
      complexity: Complexity.Simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
      duration: 30,
      ingredients: [
        S.of(context).White_and_Green_Asparagus,
        S.of(context).Pine_Nuts,
        S.of(context).Cherry_Tomatoes,
        S.of(context).Salad,
        S.of(context).Salt_Pepper_and_Olive_Oil,
      ],
      steps: [
        S.of(context).Wash_peel_and_cut_the_asparagus,
        S.of(context).Cook_in_salted_water,
        S.of(context).Salt_and_pepper_the_asparagus,
        S.of(context).Roast_the_pine_nuts,
        S.of(context).Halve_the_tomatoes,
        S.of(context).Mix_with_asparagus_salad_and_dressing,
        S.of(context).Serve_with_Baguette,
      ],
      isGlutenFree: true,
      isVegan: true,
      isVegetarian: true,
      isLactoseFree: true,
    ),
  ];
}

enum Filter { gluten, lactose, vegetarian, vegan }

Map<Filter, bool> initialFilters = {
  Filter.gluten: false,
  Filter.lactose: false,
  Filter.vegetarian: false,
  Filter.vegan: false,
};

late List<MealsModel> availableMeals;

Color setColor(context) {
  return AppCubit.get(context).isDark ? Colors.white : Colors.black;
}
