import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:meals/models/meals_model.dart';
import 'package:meals/shared/components/components.dart';

class MealsScreen extends StatelessWidget {
  MealsScreen({super.key, required this.title, required this.meals});

  List<MealsModel>? meals;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title!,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 20,
              ),
        ),
      ),
      body: ConditionalBuilder(
        condition: meals!.isNotEmpty,
        builder: (BuildContext context) => ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) =>
              buildMealItem(context, meals![index]),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 15,
          ),
          itemCount: meals!.length,
        ),
        fallback: (BuildContext context) => Center(
            child:
                defaultTestScreen(text: "Empty meal select another Category")),
      ),
    );
  }
}
