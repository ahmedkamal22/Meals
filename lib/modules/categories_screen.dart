import 'package:flutter/material.dart';
import 'package:meals/shared/components/components.dart';
import 'package:meals/shared/components/constants.dart';

class CategoriesScreen extends StatefulWidget {
  CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animation;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 600,
      ),
      lowerBound: 0,
      upperBound: 1,
    );
    animation.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animation.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) => SlideTransition(
        position: Tween(
          begin: const Offset(0, 0.3),
          end: const Offset(0, 0),
        ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
        child: child,
      ),
      child: GridView(
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
      ),
    );
  }
}
