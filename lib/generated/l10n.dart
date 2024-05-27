// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Pick your category`
  String get Pick_your_category {
    return Intl.message(
      'Pick your category',
      name: 'Pick_your_category',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get Categories {
    return Intl.message(
      'Categories',
      name: 'Categories',
      desc: '',
      args: [],
    );
  }

  /// `Favourites`
  String get Favourites {
    return Intl.message(
      'Favourites',
      name: 'Favourites',
      desc: '',
      args: [],
    );
  }

  /// `There isn't favourite meals yet`
  String get notInFavourites {
    return Intl.message(
      'There isn\'t favourite meals yet',
      name: 'notInFavourites',
      desc: '',
      args: [],
    );
  }

  /// `Cooking Up!`
  String get cookingUp {
    return Intl.message(
      'Cooking Up!',
      name: 'cookingUp',
      desc: '',
      args: [],
    );
  }

  /// `Meals`
  String get Meals {
    return Intl.message(
      'Meals',
      name: 'Meals',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get Filters {
    return Intl.message(
      'Filters',
      name: 'Filters',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Italian`
  String get Italian {
    return Intl.message(
      'Italian',
      name: 'Italian',
      desc: '',
      args: [],
    );
  }

  /// `Quick & Easy`
  String get quickEasy {
    return Intl.message(
      'Quick & Easy',
      name: 'quickEasy',
      desc: '',
      args: [],
    );
  }

  /// `Hamburgers`
  String get Hamburgers {
    return Intl.message(
      'Hamburgers',
      name: 'Hamburgers',
      desc: '',
      args: [],
    );
  }

  /// `German`
  String get German {
    return Intl.message(
      'German',
      name: 'German',
      desc: '',
      args: [],
    );
  }

  /// `Light & Lovely`
  String get lightLovely {
    return Intl.message(
      'Light & Lovely',
      name: 'lightLovely',
      desc: '',
      args: [],
    );
  }

  /// `Exotic`
  String get Exotic {
    return Intl.message(
      'Exotic',
      name: 'Exotic',
      desc: '',
      args: [],
    );
  }

  /// `Breakfast`
  String get Breakfast {
    return Intl.message(
      'Breakfast',
      name: 'Breakfast',
      desc: '',
      args: [],
    );
  }

  /// `Asian`
  String get Asian {
    return Intl.message(
      'Asian',
      name: 'Asian',
      desc: '',
      args: [],
    );
  }

  /// `French`
  String get French {
    return Intl.message(
      'French',
      name: 'French',
      desc: '',
      args: [],
    );
  }

  /// `Summer Luxurious`
  String get Summer_Luxurious {
    return Intl.message(
      'Summer Luxurious',
      name: 'Summer_Luxurious',
      desc: '',
      args: [],
    );
  }

  /// `There isn't meals of these types`
  String get Empty_meal {
    return Intl.message(
      'There isn\'t meals of these types',
      name: 'Empty_meal',
      desc: '',
      args: [],
    );
  }

  /// `Spaghetti with Tomato Sauce`
  String get Spaghetti_with_Tomato_Sauce {
    return Intl.message(
      'Spaghetti with Tomato Sauce',
      name: 'Spaghetti_with_Tomato_Sauce',
      desc: '',
      args: [],
    );
  }

  /// `Toast Hawaii`
  String get Toast_Hawaii {
    return Intl.message(
      'Toast Hawaii',
      name: 'Toast_Hawaii',
      desc: '',
      args: [],
    );
  }

  /// `Classic Hamburger`
  String get Classic_Hamburger {
    return Intl.message(
      'Classic Hamburger',
      name: 'Classic_Hamburger',
      desc: '',
      args: [],
    );
  }

  /// `Wiener Schnitzel`
  String get Wiener_Schnitzel {
    return Intl.message(
      'Wiener Schnitzel',
      name: 'Wiener_Schnitzel',
      desc: '',
      args: [],
    );
  }

  /// `Salad with Smoked Salmon`
  String get Salad_with_Smoked_Salmon {
    return Intl.message(
      'Salad with Smoked Salmon',
      name: 'Salad_with_Smoked_Salmon',
      desc: '',
      args: [],
    );
  }

  /// `Delicious Orange Mousse`
  String get Delicious_Orange_Mousse {
    return Intl.message(
      'Delicious Orange Mousse',
      name: 'Delicious_Orange_Mousse',
      desc: '',
      args: [],
    );
  }

  /// `Pancakes`
  String get Pancakes {
    return Intl.message(
      'Pancakes',
      name: 'Pancakes',
      desc: '',
      args: [],
    );
  }

  /// `Creamy Indian Chicken Curry`
  String get Creamy_Indian_Chicken_Curry {
    return Intl.message(
      'Creamy Indian Chicken Curry',
      name: 'Creamy_Indian_Chicken_Curry',
      desc: '',
      args: [],
    );
  }

  /// `Chocolate Souffle`
  String get Chocolate_Souffle {
    return Intl.message(
      'Chocolate Souffle',
      name: 'Chocolate_Souffle',
      desc: '',
      args: [],
    );
  }

  /// `Asparagus Salad with Cherry Tomatoes`
  String get Asparagus_Salad_with_Cherry_Tomatoes {
    return Intl.message(
      'Asparagus Salad with Cherry Tomatoes',
      name: 'Asparagus_Salad_with_Cherry_Tomatoes',
      desc: '',
      args: [],
    );
  }

  /// `Change Mode`
  String get Change_Mode {
    return Intl.message(
      'Change Mode',
      name: 'Change_Mode',
      desc: '',
      args: [],
    );
  }

  /// `Swap between b&w themes .`
  String get Swap_Themes {
    return Intl.message(
      'Swap between b&w themes .',
      name: 'Swap_Themes',
      desc: '',
      args: [],
    );
  }

  /// `Added To Favourites Successfully`
  String get Added_To_Favourites {
    return Intl.message(
      'Added To Favourites Successfully',
      name: 'Added_To_Favourites',
      desc: '',
      args: [],
    );
  }

  /// `Removed From Favourites Successfully`
  String get Removed_From_Favourites {
    return Intl.message(
      'Removed From Favourites Successfully',
      name: 'Removed_From_Favourites',
      desc: '',
      args: [],
    );
  }

  /// `Ingredients`
  String get Ingredients {
    return Intl.message(
      'Ingredients',
      name: 'Ingredients',
      desc: '',
      args: [],
    );
  }

  /// `Steps`
  String get Steps {
    return Intl.message(
      'Steps',
      name: 'Steps',
      desc: '',
      args: [],
    );
  }

  /// `Meals Filters`
  String get Meals_Filters {
    return Intl.message(
      'Meals Filters',
      name: 'Meals_Filters',
      desc: '',
      args: [],
    );
  }

  /// `Gluten-free`
  String get Gluten_free {
    return Intl.message(
      'Gluten-free',
      name: 'Gluten_free',
      desc: '',
      args: [],
    );
  }

  /// `Only include gluten-free meals.`
  String get only_include_gluten_free_meals {
    return Intl.message(
      'Only include gluten-free meals.',
      name: 'only_include_gluten_free_meals',
      desc: '',
      args: [],
    );
  }

  /// `Lactose-free`
  String get Lactose_free {
    return Intl.message(
      'Lactose-free',
      name: 'Lactose_free',
      desc: '',
      args: [],
    );
  }

  /// `Only include lactose-free meals.`
  String get only_include_lactose_free_meals {
    return Intl.message(
      'Only include lactose-free meals.',
      name: 'only_include_lactose_free_meals',
      desc: '',
      args: [],
    );
  }

  /// `Vegetarian-free`
  String get Vegetarian_free {
    return Intl.message(
      'Vegetarian-free',
      name: 'Vegetarian_free',
      desc: '',
      args: [],
    );
  }

  /// `Only include vegetarian-free meals.`
  String get only_include_vegetarian_free_meals {
    return Intl.message(
      'Only include vegetarian-free meals.',
      name: 'only_include_vegetarian_free_meals',
      desc: '',
      args: [],
    );
  }

  /// `Vegan-free`
  String get Vegan_free {
    return Intl.message(
      'Vegan-free',
      name: 'Vegan_free',
      desc: '',
      args: [],
    );
  }

  /// `Only include vegan-free meals.`
  String get only_include_vegan_free_meals {
    return Intl.message(
      'Only include vegan-free meals.',
      name: 'only_include_vegan_free_meals',
      desc: '',
      args: [],
    );
  }

  /// `min`
  String get min {
    return Intl.message(
      'min',
      name: 'min',
      desc: '',
      args: [],
    );
  }

  /// `Simple`
  String get Simple {
    return Intl.message(
      'Simple',
      name: 'Simple',
      desc: '',
      args: [],
    );
  }

  /// `Challenging`
  String get Challenging {
    return Intl.message(
      'Challenging',
      name: 'Challenging',
      desc: '',
      args: [],
    );
  }

  /// `Hard`
  String get Hard {
    return Intl.message(
      'Hard',
      name: 'Hard',
      desc: '',
      args: [],
    );
  }

  /// `Affordable`
  String get Affordable {
    return Intl.message(
      'Affordable',
      name: 'Affordable',
      desc: '',
      args: [],
    );
  }

  /// `Pricey`
  String get Pricey {
    return Intl.message(
      'Pricey',
      name: 'Pricey',
      desc: '',
      args: [],
    );
  }

  /// `Luxurious`
  String get Luxurious {
    return Intl.message(
      'Luxurious',
      name: 'Luxurious',
      desc: '',
      args: [],
    );
  }

  /// `4 Tomatoes`
  String get Four_Tomatoes {
    return Intl.message(
      '4 Tomatoes',
      name: 'Four_Tomatoes',
      desc: '',
      args: [],
    );
  }

  /// `1 Tablespoon of Olive Oil`
  String get One_Tablespoon_of_Olive_Oil {
    return Intl.message(
      '1 Tablespoon of Olive Oil',
      name: 'One_Tablespoon_of_Olive_Oil',
      desc: '',
      args: [],
    );
  }

  /// `1 Onion`
  String get One_Onion {
    return Intl.message(
      '1 Onion',
      name: 'One_Onion',
      desc: '',
      args: [],
    );
  }

  /// `250g Spaghetti`
  String get Two_Hundred_Half_Spaghetti {
    return Intl.message(
      '250g Spaghetti',
      name: 'Two_Hundred_Half_Spaghetti',
      desc: '',
      args: [],
    );
  }

  /// `Spices`
  String get Spices {
    return Intl.message(
      'Spices',
      name: 'Spices',
      desc: '',
      args: [],
    );
  }

  /// `Cheese (optional)`
  String get Cheese_optional {
    return Intl.message(
      'Cheese (optional)',
      name: 'Cheese_optional',
      desc: '',
      args: [],
    );
  }

  /// `Cut the tomatoes and the onion into small pieces.`
  String get Cut_the_tomatoes_and_the_onion_into_small_pieces {
    return Intl.message(
      'Cut the tomatoes and the onion into small pieces.',
      name: 'Cut_the_tomatoes_and_the_onion_into_small_pieces',
      desc: '',
      args: [],
    );
  }

  /// `Boil some water - add salt to it once it boils.`
  String get Boil_some_water_add_salt_to_it_once_it_boils {
    return Intl.message(
      'Boil some water - add salt to it once it boils.',
      name: 'Boil_some_water_add_salt_to_it_once_it_boils',
      desc: '',
      args: [],
    );
  }

  /// `Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.`
  String
      get Put_the_spaghetti_into_the_boiling_water_they_should_be_done_in_about_Ten_to_Twelve_minutes {
    return Intl.message(
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      name:
          'Put_the_spaghetti_into_the_boiling_water_they_should_be_done_in_about_Ten_to_Twelve_minutes',
      desc: '',
      args: [],
    );
  }

  /// `In the meantime, heated up some olive oil and add the cut onion.`
  String get In_the_meantime_heated_up_some_olive_oil_and_add_the_cut_onion {
    return Intl.message(
      'In the meantime, heated up some olive oil and add the cut onion.',
      name: 'In_the_meantime_heated_up_some_olive_oil_and_add_the_cut_onion',
      desc: '',
      args: [],
    );
  }

  /// `After 2 minutes, add the tomato pieces, salt, pepper and your other spices.`
  String
      get After_Two_minutes_add_the_tomato_pieces_salt_pepper_and_your_other_spices {
    return Intl.message(
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      name:
          'After_Two_minutes_add_the_tomato_pieces_salt_pepper_and_your_other_spices',
      desc: '',
      args: [],
    );
  }

  /// `The sauce will be done once the spaghetti are.`
  String get The_sauce_will_be_done_once_the_spaghetti_are {
    return Intl.message(
      'The sauce will be done once the spaghetti are.',
      name: 'The_sauce_will_be_done_once_the_spaghetti_are',
      desc: '',
      args: [],
    );
  }

  /// `Feel free to add some cheese on top of the finished dish.`
  String get Feel_free_to_add_some_cheese_on_top_of_the_finished_dish {
    return Intl.message(
      'Feel free to add some cheese on top of the finished dish.',
      name: 'Feel_free_to_add_some_cheese_on_top_of_the_finished_dish',
      desc: '',
      args: [],
    );
  }

  /// `1 Slice White Bread`
  String get One_Slice_White_Bread {
    return Intl.message(
      '1 Slice White Bread',
      name: 'One_Slice_White_Bread',
      desc: '',
      args: [],
    );
  }

  /// `1 Slice Ham`
  String get One_Slice_Ham {
    return Intl.message(
      '1 Slice Ham',
      name: 'One_Slice_Ham',
      desc: '',
      args: [],
    );
  }

  /// `1 Slice Pineapple`
  String get One_Slice_Pineapple {
    return Intl.message(
      '1 Slice Pineapple',
      name: 'One_Slice_Pineapple',
      desc: '',
      args: [],
    );
  }

  /// `1-2 Slices of Cheese`
  String get One_Two_Slices_of_Cheese {
    return Intl.message(
      '1-2 Slices of Cheese',
      name: 'One_Two_Slices_of_Cheese',
      desc: '',
      args: [],
    );
  }

  /// `Butter one side of the white bread`
  String get Butter_one_side_of_the_white_bread {
    return Intl.message(
      'Butter one side of the white bread',
      name: 'Butter_one_side_of_the_white_bread',
      desc: '',
      args: [],
    );
  }

  /// `Layer ham, the pineapple and cheese on the white bread`
  String get Layer_ham_the_pineapple_and_cheese_on_the_white_bread {
    return Intl.message(
      'Layer ham, the pineapple and cheese on the white bread',
      name: 'Layer_ham_the_pineapple_and_cheese_on_the_white_bread',
      desc: '',
      args: [],
    );
  }

  /// `Bake the toast for round about 10 minutes in the oven at 200°C`
  String
      get Bake_the_toast_for_round_about_Ten_minutes_in_the_oven_at_Two_Hundred_Temp {
    return Intl.message(
      'Bake the toast for round about 10 minutes in the oven at 200°C',
      name:
          'Bake_the_toast_for_round_about_Ten_minutes_in_the_oven_at_Two_Hundred_Temp',
      desc: '',
      args: [],
    );
  }

  /// `300g Cattle Hack`
  String get Three_Hundred_Gram_Cattle_Hack {
    return Intl.message(
      '300g Cattle Hack',
      name: 'Three_Hundred_Gram_Cattle_Hack',
      desc: '',
      args: [],
    );
  }

  /// `1 Tomato`
  String get One_Tomato {
    return Intl.message(
      '1 Tomato',
      name: 'One_Tomato',
      desc: '',
      args: [],
    );
  }

  /// `1 Cucumber`
  String get One_Cucumber {
    return Intl.message(
      '1 Cucumber',
      name: 'One_Cucumber',
      desc: '',
      args: [],
    );
  }

  /// `Ketchup`
  String get Ketchup {
    return Intl.message(
      'Ketchup',
      name: 'Ketchup',
      desc: '',
      args: [],
    );
  }

  /// `2 Burger Buns`
  String get Two_Burger_Buns {
    return Intl.message(
      '2 Burger Buns',
      name: 'Two_Burger_Buns',
      desc: '',
      args: [],
    );
  }

  /// `Form 2 patties`
  String get Form_Two_patties {
    return Intl.message(
      'Form 2 patties',
      name: 'Form_Two_patties',
      desc: '',
      args: [],
    );
  }

  /// `Fry the patties for c. 4 minutes on each side`
  String get Fry_the_patties_for_c_Four_minutes_on_each_side {
    return Intl.message(
      'Fry the patties for c. 4 minutes on each side',
      name: 'Fry_the_patties_for_c_Four_minutes_on_each_side',
      desc: '',
      args: [],
    );
  }

  /// `Quickly fry the buns for c. 1 minute on each side`
  String get Quickly_fry_the_buns_for_c_One_minute_on_each_side {
    return Intl.message(
      'Quickly fry the buns for c. 1 minute on each side',
      name: 'Quickly_fry_the_buns_for_c_One_minute_on_each_side',
      desc: '',
      args: [],
    );
  }

  /// `Brush buns with ketchup`
  String get Brush_buns_with_ketchup {
    return Intl.message(
      'Brush buns with ketchup',
      name: 'Brush_buns_with_ketchup',
      desc: '',
      args: [],
    );
  }

  /// `Serve burger with tomato, cucumber and onion`
  String get Serve_burger_with_tomato_cucumber_and_onion {
    return Intl.message(
      'Serve burger with tomato, cucumber and onion',
      name: 'Serve_burger_with_tomato_cucumber_and_onion',
      desc: '',
      args: [],
    );
  }

  /// `8 Veal Cutlets`
  String get Eight_Veal_Cutlets {
    return Intl.message(
      '8 Veal Cutlets',
      name: 'Eight_Veal_Cutlets',
      desc: '',
      args: [],
    );
  }

  /// `4 Eggs`
  String get Four_Eggs {
    return Intl.message(
      '4 Eggs',
      name: 'Four_Eggs',
      desc: '',
      args: [],
    );
  }

  /// `200g Bread Crumbs`
  String get Two_Hundred_Gram_Bread_Crumbs {
    return Intl.message(
      '200g Bread Crumbs',
      name: 'Two_Hundred_Gram_Bread_Crumbs',
      desc: '',
      args: [],
    );
  }

  /// `100g Flour`
  String get Hundred_Gram_Flour {
    return Intl.message(
      '100g Flour',
      name: 'Hundred_Gram_Flour',
      desc: '',
      args: [],
    );
  }

  /// `300ml Butter`
  String get Three_Hundred_ML_Butter {
    return Intl.message(
      '300ml Butter',
      name: 'Three_Hundred_ML_Butter',
      desc: '',
      args: [],
    );
  }

  /// `100g Vegetable Oil`
  String get Hundred_Gram_Vegetable_Oil {
    return Intl.message(
      '100g Vegetable Oil',
      name: 'Hundred_Gram_Vegetable_Oil',
      desc: '',
      args: [],
    );
  }

  /// `Lemon Slices`
  String get Lemon_Slices {
    return Intl.message(
      'Lemon Slices',
      name: 'Lemon_Slices',
      desc: '',
      args: [],
    );
  }

  /// `Tenderize the veal to about 2–4mm, and salt on both sides.`
  String get Tenderize_the_veal_to_about_Two_Four_MM_and_salt_on_both_sides {
    return Intl.message(
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      name: 'Tenderize_the_veal_to_about_Two_Four_MM_and_salt_on_both_sides',
      desc: '',
      args: [],
    );
  }

  /// `On a flat plate, stir the eggs briefly with a fork.`
  String get On_a_flat_plate_stir_the_eggs_briefly_with_a_fork {
    return Intl.message(
      'On a flat plate, stir the eggs briefly with a fork.',
      name: 'On_a_flat_plate_stir_the_eggs_briefly_with_a_fork',
      desc: '',
      args: [],
    );
  }

  /// `Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.`
  String
      get Lightly_coat_the_cutlets_in_flour_then_dip_into_the_egg_and_finally_coat_in_breadcrumbs {
    return Intl.message(
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      name:
          'Lightly_coat_the_cutlets_in_flour_then_dip_into_the_egg_and_finally_coat_in_breadcrumbs',
      desc: '',
      args: [],
    );
  }

  /// `Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.`
  String
      get Heat_the_butter_and_oil_in_a_large_pan_allow_the_fat_to_get_very_hot_and_fry_the_schnitzels_until_golden_brown_on_both_sides {
    return Intl.message(
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      name:
          'Heat_the_butter_and_oil_in_a_large_pan_allow_the_fat_to_get_very_hot_and_fry_the_schnitzels_until_golden_brown_on_both_sides',
      desc: '',
      args: [],
    );
  }

  /// `Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.`
  String
      get Make_sure_to_toss_the_pan_regularly_so_that_the_schnitzels_are_surrounded_by_oil_and_the_crumbing_becomes_fluffy {
    return Intl.message(
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      name:
          'Make_sure_to_toss_the_pan_regularly_so_that_the_schnitzels_are_surrounded_by_oil_and_the_crumbing_becomes_fluffy',
      desc: '',
      args: [],
    );
  }

  /// `Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.`
  String
      get Remove_and_drain_on_kitchen_paper_Fry_the_parsley_in_the_remaining_oil_and_drain {
    return Intl.message(
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      name:
          'Remove_and_drain_on_kitchen_paper_Fry_the_parsley_in_the_remaining_oil_and_drain',
      desc: '',
      args: [],
    );
  }

  /// `Place the schnitzels on warmed plate and serve garnished with parsley and slices of lemon.`
  String
      get Place_the_schnitzels_on_warmed_plate_and_serve_garnished_with_parsley_and_slices_of_lemon {
    return Intl.message(
      'Place the schnitzels on warmed plate and serve garnished with parsley and slices of lemon.',
      name:
          'Place_the_schnitzels_on_warmed_plate_and_serve_garnished_with_parsley_and_slices_of_lemon',
      desc: '',
      args: [],
    );
  }

  /// `Arugula`
  String get Arugula {
    return Intl.message(
      'Arugula',
      name: 'Arugula',
      desc: '',
      args: [],
    );
  }

  /// `Lamb's Lettuce`
  String get Lambs_Lettuce {
    return Intl.message(
      'Lamb\'s Lettuce',
      name: 'Lambs_Lettuce',
      desc: '',
      args: [],
    );
  }

  /// `Parsley`
  String get Parsley {
    return Intl.message(
      'Parsley',
      name: 'Parsley',
      desc: '',
      args: [],
    );
  }

  /// `Fennel`
  String get Fennel {
    return Intl.message(
      'Fennel',
      name: 'Fennel',
      desc: '',
      args: [],
    );
  }

  /// `200g Smoked Salmon`
  String get Two_Hundred_Gram_Smoked_Salmon {
    return Intl.message(
      '200g Smoked Salmon',
      name: 'Two_Hundred_Gram_Smoked_Salmon',
      desc: '',
      args: [],
    );
  }

  /// `Mustard`
  String get Mustard {
    return Intl.message(
      'Mustard',
      name: 'Mustard',
      desc: '',
      args: [],
    );
  }

  /// `Balsamic Vinegar`
  String get Balsamic_Vinegar {
    return Intl.message(
      'Balsamic Vinegar',
      name: 'Balsamic_Vinegar',
      desc: '',
      args: [],
    );
  }

  /// `Olive Oil`
  String get Olive_Oil {
    return Intl.message(
      'Olive Oil',
      name: 'Olive_Oil',
      desc: '',
      args: [],
    );
  }

  /// `Salt and Pepper`
  String get Salt_and_Pepper {
    return Intl.message(
      'Salt and Pepper',
      name: 'Salt_and_Pepper',
      desc: '',
      args: [],
    );
  }

  /// `Wash and cut salad and herbs`
  String get Wash_and_cut_salad_and_herbs {
    return Intl.message(
      'Wash and cut salad and herbs',
      name: 'Wash_and_cut_salad_and_herbs',
      desc: '',
      args: [],
    );
  }

  /// `Dice the salmon`
  String get Dice_the_salmon {
    return Intl.message(
      'Dice the salmon',
      name: 'Dice_the_salmon',
      desc: '',
      args: [],
    );
  }

  /// `Process mustard, vinegar and olive oil into a dressing`
  String get Process_mustard_vinegar_and_olive_oil_into_a_dressing {
    return Intl.message(
      'Process mustard, vinegar and olive oil into a dressing',
      name: 'Process_mustard_vinegar_and_olive_oil_into_a_dressing',
      desc: '',
      args: [],
    );
  }

  /// `Prepare the salad`
  String get Prepare_the_salad {
    return Intl.message(
      'Prepare the salad',
      name: 'Prepare_the_salad',
      desc: '',
      args: [],
    );
  }

  /// `Add salmon cubes and dressing`
  String get Add_salmon_cubes_and_dressing {
    return Intl.message(
      'Add salmon cubes and dressing',
      name: 'Add_salmon_cubes_and_dressing',
      desc: '',
      args: [],
    );
  }

  /// `4 Sheets of Gelatin`
  String get Gelatin_Sheets {
    return Intl.message(
      '4 Sheets of Gelatin',
      name: 'Gelatin_Sheets',
      desc: '',
      args: [],
    );
  }

  /// `150ml Orange Juice`
  String get Orange_Juice {
    return Intl.message(
      '150ml Orange Juice',
      name: 'Orange_Juice',
      desc: '',
      args: [],
    );
  }

  /// `80g Sugar`
  String get Sugar {
    return Intl.message(
      '80g Sugar',
      name: 'Sugar',
      desc: '',
      args: [],
    );
  }

  /// `300g Yoghurt`
  String get Yoghurt {
    return Intl.message(
      '300g Yoghurt',
      name: 'Yoghurt',
      desc: '',
      args: [],
    );
  }

  /// `200g Cream`
  String get Cream {
    return Intl.message(
      '200g Cream',
      name: 'Cream',
      desc: '',
      args: [],
    );
  }

  /// `Orange Peel`
  String get Orange_Peel {
    return Intl.message(
      'Orange Peel',
      name: 'Orange_Peel',
      desc: '',
      args: [],
    );
  }

  /// `Dissolve gelatin in pot`
  String get Dissolve_Gelatin {
    return Intl.message(
      'Dissolve gelatin in pot',
      name: 'Dissolve_Gelatin',
      desc: '',
      args: [],
    );
  }

  /// `Add orange juice and sugar`
  String get Add_Orange_Juice_and_Sugar {
    return Intl.message(
      'Add orange juice and sugar',
      name: 'Add_Orange_Juice_and_Sugar',
      desc: '',
      args: [],
    );
  }

  /// `Take pot off the stove`
  String get Take_Pot_Off_the_Stove {
    return Intl.message(
      'Take pot off the stove',
      name: 'Take_Pot_Off_the_Stove',
      desc: '',
      args: [],
    );
  }

  /// `Add 2 tablespoons of yoghurt`
  String get Add_Yoghurt {
    return Intl.message(
      'Add 2 tablespoons of yoghurt',
      name: 'Add_Yoghurt',
      desc: '',
      args: [],
    );
  }

  /// `Stir gelatin under remaining yoghurt`
  String get Stir_Gelatin_Under_Remaining_Yoghurt {
    return Intl.message(
      'Stir gelatin under remaining yoghurt',
      name: 'Stir_Gelatin_Under_Remaining_Yoghurt',
      desc: '',
      args: [],
    );
  }

  /// `Cool everything down in the refrigerator`
  String get Cool_in_Refrigerator {
    return Intl.message(
      'Cool everything down in the refrigerator',
      name: 'Cool_in_Refrigerator',
      desc: '',
      args: [],
    );
  }

  /// `Whip the cream`
  String get Whip_Cream {
    return Intl.message(
      'Whip the cream',
      name: 'Whip_Cream',
      desc: '',
      args: [],
    );
  }

  /// `Lift it under die orange mass`
  String get Lift_Cream_Under_Orange_Mass {
    return Intl.message(
      'Lift it under die orange mass',
      name: 'Lift_Cream_Under_Orange_Mass',
      desc: '',
      args: [],
    );
  }

  /// `Cool down again for at least 4 hours`
  String get Cool_Down_Again {
    return Intl.message(
      'Cool down again for at least 4 hours',
      name: 'Cool_Down_Again',
      desc: '',
      args: [],
    );
  }

  /// `Serve with orange peel`
  String get Serve_with_Orange_Peel {
    return Intl.message(
      'Serve with orange peel',
      name: 'Serve_with_Orange_Peel',
      desc: '',
      args: [],
    );
  }

  /// `1 1/2 Cups all-purpose Flour`
  String get Flour {
    return Intl.message(
      '1 1/2 Cups all-purpose Flour',
      name: 'Flour',
      desc: '',
      args: [],
    );
  }

  /// `3 1/2 Teaspoons Baking Powder`
  String get Baking_Powder {
    return Intl.message(
      '3 1/2 Teaspoons Baking Powder',
      name: 'Baking_Powder',
      desc: '',
      args: [],
    );
  }

  /// `1 Teaspoon Salt`
  String get Salt {
    return Intl.message(
      '1 Teaspoon Salt',
      name: 'Salt',
      desc: '',
      args: [],
    );
  }

  /// `1 Tablespoon White Sugar`
  String get White_Sugar {
    return Intl.message(
      '1 Tablespoon White Sugar',
      name: 'White_Sugar',
      desc: '',
      args: [],
    );
  }

  /// `1 1/4 cups Milk`
  String get Milk {
    return Intl.message(
      '1 1/4 cups Milk',
      name: 'Milk',
      desc: '',
      args: [],
    );
  }

  /// `1 Egg`
  String get Egg {
    return Intl.message(
      '1 Egg',
      name: 'Egg',
      desc: '',
      args: [],
    );
  }

  /// `3 Tablespoons Butter, melted`
  String get Butter {
    return Intl.message(
      '3 Tablespoons Butter, melted',
      name: 'Butter',
      desc: '',
      args: [],
    );
  }

  /// `In a large bowl, sift together the flour, baking powder, salt and sugar.`
  String get Mix_Ingredients {
    return Intl.message(
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      name: 'Mix_Ingredients',
      desc: '',
      args: [],
    );
  }

  /// `Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.`
  String get Make_Well_and_Mix {
    return Intl.message(
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      name: 'Make_Well_and_Mix',
      desc: '',
      args: [],
    );
  }

  /// `Heat a lightly oiled griddle or frying pan over medium high heat.`
  String get Heat_Griddle {
    return Intl.message(
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      name: 'Heat_Griddle',
      desc: '',
      args: [],
    );
  }

  /// `Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.`
  String get Pour_Batter {
    return Intl.message(
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.',
      name: 'Pour_Batter',
      desc: '',
      args: [],
    );
  }

  /// `4 Chicken Breasts`
  String get Chicken_Breasts {
    return Intl.message(
      '4 Chicken Breasts',
      name: 'Chicken_Breasts',
      desc: '',
      args: [],
    );
  }

  /// `1 Onion`
  String get Onion {
    return Intl.message(
      '1 Onion',
      name: 'Onion',
      desc: '',
      args: [],
    );
  }

  /// `2 Cloves of Garlic`
  String get Garlic {
    return Intl.message(
      '2 Cloves of Garlic',
      name: 'Garlic',
      desc: '',
      args: [],
    );
  }

  /// `1 Piece of Ginger`
  String get Ginger {
    return Intl.message(
      '1 Piece of Ginger',
      name: 'Ginger',
      desc: '',
      args: [],
    );
  }

  /// `4 Tablespoons Almonds`
  String get Almonds {
    return Intl.message(
      '4 Tablespoons Almonds',
      name: 'Almonds',
      desc: '',
      args: [],
    );
  }

  /// `1 Teaspoon Cayenne Pepper`
  String get Cayenne_Pepper {
    return Intl.message(
      '1 Teaspoon Cayenne Pepper',
      name: 'Cayenne_Pepper',
      desc: '',
      args: [],
    );
  }

  /// `500ml Coconut Milk`
  String get Coconut_Milk {
    return Intl.message(
      '500ml Coconut Milk',
      name: 'Coconut_Milk',
      desc: '',
      args: [],
    );
  }

  /// `Slice and fry the chicken breast`
  String get Slice_and_Fry_Chicken {
    return Intl.message(
      'Slice and fry the chicken breast',
      name: 'Slice_and_Fry_Chicken',
      desc: '',
      args: [],
    );
  }

  /// `Process onion, garlic and ginger into paste and saute everything`
  String get Process_Onion_Garlic_Ginger {
    return Intl.message(
      'Process onion, garlic and ginger into paste and saute everything',
      name: 'Process_Onion_Garlic_Ginger',
      desc: '',
      args: [],
    );
  }

  /// `Add spices and stir fry`
  String get Add_Spices {
    return Intl.message(
      'Add spices and stir fry',
      name: 'Add_Spices',
      desc: '',
      args: [],
    );
  }

  /// `Add chicken breast + 250ml of water and cook everything for 10 minutes`
  String get Cook_with_Water {
    return Intl.message(
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      name: 'Cook_with_Water',
      desc: '',
      args: [],
    );
  }

  /// `Add coconut milk`
  String get Add_Coconut_Milk {
    return Intl.message(
      'Add coconut milk',
      name: 'Add_Coconut_Milk',
      desc: '',
      args: [],
    );
  }

  /// `Serve with rice`
  String get Serve_with_Rice {
    return Intl.message(
      'Serve with rice',
      name: 'Serve_with_Rice',
      desc: '',
      args: [],
    );
  }

  /// `1 Teaspoon melted Butter`
  String get Melted_Butter {
    return Intl.message(
      '1 Teaspoon melted Butter',
      name: 'Melted_Butter',
      desc: '',
      args: [],
    );
  }

  /// `2 Ounces 70% dark Chocolate, broken into pieces`
  String get Dark_Chocolate {
    return Intl.message(
      '2 Ounces 70% dark Chocolate, broken into pieces',
      name: 'Dark_Chocolate',
      desc: '',
      args: [],
    );
  }

  /// `1 Tablespoon all-purpose Flour`
  String get Flour_for_Souffles {
    return Intl.message(
      '1 Tablespoon all-purpose Flour',
      name: 'Flour_for_Souffles',
      desc: '',
      args: [],
    );
  }

  /// `4 1/3 tablespoons cold Milk`
  String get Cold_Milk {
    return Intl.message(
      '4 1/3 tablespoons cold Milk',
      name: 'Cold_Milk',
      desc: '',
      args: [],
    );
  }

  /// `1 Pinch Salt`
  String get Salt_and_Pepper_for_Souffles {
    return Intl.message(
      '1 Pinch Salt',
      name: 'Salt_and_Pepper_for_Souffles',
      desc: '',
      args: [],
    );
  }

  /// `1 Pinch Cayenne Pepper`
  String get Cayenne_Pepper_for_Souffles {
    return Intl.message(
      '1 Pinch Cayenne Pepper',
      name: 'Cayenne_Pepper_for_Souffles',
      desc: '',
      args: [],
    );
  }

  /// `1 Large Egg Yolk`
  String get Egg_Yolk {
    return Intl.message(
      '1 Large Egg Yolk',
      name: 'Egg_Yolk',
      desc: '',
      args: [],
    );
  }

  /// `2 Large Egg Whites`
  String get Egg_Whites {
    return Intl.message(
      '2 Large Egg Whites',
      name: 'Egg_Whites',
      desc: '',
      args: [],
    );
  }

  /// `1 Pinch Cream of Tartar`
  String get Cream_of_Tartar {
    return Intl.message(
      '1 Pinch Cream of Tartar',
      name: 'Cream_of_Tartar',
      desc: '',
      args: [],
    );
  }

  /// `Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.`
  String get Preheat_Oven {
    return Intl.message(
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      name: 'Preheat_Oven',
      desc: '',
      args: [],
    );
  }

  /// `Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.`
  String get Prepare_Ramekins {
    return Intl.message(
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      name: 'Prepare_Ramekins',
      desc: '',
      args: [],
    );
  }

  /// `Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.`
  String get Coat_Ramekins {
    return Intl.message(
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      name: 'Coat_Ramekins',
      desc: '',
      args: [],
    );
  }

  /// `Place chocolate pieces in a metal mixing bowl.`
  String get Melt_Chocolate {
    return Intl.message(
      'Place chocolate pieces in a metal mixing bowl.',
      name: 'Melt_Chocolate',
      desc: '',
      args: [],
    );
  }

  /// `Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.`
  String get Prepare_Chocolate_Mixture {
    return Intl.message(
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      name: 'Prepare_Chocolate_Mixture',
      desc: '',
      args: [],
    );
  }

  /// `Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.`
  String get Whisk_In_Milk {
    return Intl.message(
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      name: 'Whisk_In_Milk',
      desc: '',
      args: [],
    );
  }

  /// `Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.`
  String get Add_Seasoning_to_Chocolate {
    return Intl.message(
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      name: 'Add_Seasoning_to_Chocolate',
      desc: '',
      args: [],
    );
  }

  /// `Place bowl over a pan of about 3 cups hot water over low heat`
  String get Place_bowl_over_a_pan_cups {
    return Intl.message(
      'Place bowl over a pan of about 3 cups hot water over low heat',
      name: 'Place_bowl_over_a_pan_cups',
      desc: '',
      args: [],
    );
  }

  /// `Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.`
  String get Leave_bowl_above_the_hot_water {
    return Intl.message(
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      name: 'Leave_bowl_above_the_hot_water',
      desc: '',
      args: [],
    );
  }

  /// `Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.`
  String get Place_egg_whites_in_a_mixing_bowl {
    return Intl.message(
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      name: 'Place_egg_whites_in_a_mixing_bowl',
      desc: '',
      args: [],
    );
  }

  /// `Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.`
  String get Add_sugar_whisk {
    return Intl.message(
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      name: 'Add_sugar_whisk',
      desc: '',
      args: [],
    );
  }

  /// `whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.`
  String get Whisk_in_the_rest {
    return Intl.message(
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      name: 'Whisk_in_the_rest',
      desc: '',
      args: [],
    );
  }

  /// `Transfer a little less than half of egg whites to chocolate.`
  String get Transfer_a_little_less {
    return Intl.message(
      'Transfer a little less than half of egg whites to chocolate.',
      name: 'Transfer_a_little_less',
      desc: '',
      args: [],
    );
  }

  /// `Mix until egg whites are thoroughly incorporated into the chocolate.`
  String get Mix_until_egg_whites {
    return Intl.message(
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      name: 'Mix_until_egg_whites',
      desc: '',
      args: [],
    );
  }

  /// `Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.`
  String get Add_the_rest_of_the_egg {
    return Intl.message(
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      name: 'Add_the_rest_of_the_egg',
      desc: '',
      args: [],
    );
  }

  /// `Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.`
  String get Stop_mixing_after_the_egg_white_disappears {
    return Intl.message(
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      name: 'Stop_mixing_after_the_egg_white_disappears',
      desc: '',
      args: [],
    );
  }

  /// `Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.`
  String get Bake_in_preheated_oven_until_scuffles {
    return Intl.message(
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
      name: 'Bake_in_preheated_oven_until_scuffles',
      desc: '',
      args: [],
    );
  }

  /// `White and Green Asparagus`
  String get White_and_Green_Asparagus {
    return Intl.message(
      'White and Green Asparagus',
      name: 'White_and_Green_Asparagus',
      desc: '',
      args: [],
    );
  }

  /// `30g Pine Nuts`
  String get Pine_Nuts {
    return Intl.message(
      '30g Pine Nuts',
      name: 'Pine_Nuts',
      desc: '',
      args: [],
    );
  }

  /// `300g Cherry Tomatoes`
  String get Cherry_Tomatoes {
    return Intl.message(
      '300g Cherry Tomatoes',
      name: 'Cherry_Tomatoes',
      desc: '',
      args: [],
    );
  }

  /// `Salad`
  String get Salad {
    return Intl.message(
      'Salad',
      name: 'Salad',
      desc: '',
      args: [],
    );
  }

  /// `Salt, Pepper and Olive Oil`
  String get Salt_Pepper_and_Olive_Oil {
    return Intl.message(
      'Salt, Pepper and Olive Oil',
      name: 'Salt_Pepper_and_Olive_Oil',
      desc: '',
      args: [],
    );
  }

  /// `Wash, peel and cut the asparagus`
  String get Wash_peel_and_cut_the_asparagus {
    return Intl.message(
      'Wash, peel and cut the asparagus',
      name: 'Wash_peel_and_cut_the_asparagus',
      desc: '',
      args: [],
    );
  }

  /// `Cook in salted water`
  String get Cook_in_salted_water {
    return Intl.message(
      'Cook in salted water',
      name: 'Cook_in_salted_water',
      desc: '',
      args: [],
    );
  }

  /// `Salt and pepper the asparagus`
  String get Salt_and_pepper_the_asparagus {
    return Intl.message(
      'Salt and pepper the asparagus',
      name: 'Salt_and_pepper_the_asparagus',
      desc: '',
      args: [],
    );
  }

  /// `Roast the pine nuts`
  String get Roast_the_pine_nuts {
    return Intl.message(
      'Roast the pine nuts',
      name: 'Roast_the_pine_nuts',
      desc: '',
      args: [],
    );
  }

  /// `Halve the tomatoes`
  String get Halve_the_tomatoes {
    return Intl.message(
      'Halve the tomatoes',
      name: 'Halve_the_tomatoes',
      desc: '',
      args: [],
    );
  }

  /// `Mix with asparagus, salad and dressing`
  String get Mix_with_asparagus_salad_and_dressing {
    return Intl.message(
      'Mix with asparagus, salad and dressing',
      name: 'Mix_with_asparagus_salad_and_dressing',
      desc: '',
      args: [],
    );
  }

  /// `Serve with Baguette`
  String get Serve_with_Baguette {
    return Intl.message(
      'Serve with Baguette',
      name: 'Serve_with_Baguette',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message(
      'Language',
      name: 'Language',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);

  @override
  Future<S> load(Locale locale) => S.load(locale);

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
