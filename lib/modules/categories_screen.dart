import 'package:flutter/material.dart';
import 'package:meals/shared/components/components.dart';
import 'package:meals/shared/components/constants.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
      ),
      children: [
        for (final category in categories) buildGridItem(context, category),
      ],
    );
  }
}
