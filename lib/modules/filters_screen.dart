import 'package:flutter/material.dart';
import 'package:meals/layout/home_screen.dart';
import 'package:meals/shared/components/components.dart';
import 'package:meals/shared/components/constants.dart';

class FiltersScreen extends StatefulWidget {
  FiltersScreen({super.key, required this.currentFilters});

  Map<Filter, bool> currentFilters;

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool isGluten = false;
  bool isLactose = false;
  bool isVegetarian = false;
  bool isVegan = false;

  @override
  void initState() {
    super.initState();
    isGluten = widget.currentFilters[Filter.gluten]!;
    isLactose = widget.currentFilters[Filter.lactose]!;
    isVegetarian = widget.currentFilters[Filter.vegetarian]!;
    isVegan = widget.currentFilters[Filter.vegan]!;
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Filters"),
        leading: IconButton(
            onPressed: () {
              navigateAndFinish(
                  context,
                  HomeScreen(
                    filteredItems: {
                      Filter.gluten: isGluten,
                      Filter.lactose: isLactose,
                      Filter.vegetarian: isVegetarian,
                      Filter.vegan: isVegan,
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
            SwitchListTile(
              value: isGluten,
              onChanged: (value) {
                setState(() {
                  isGluten = value;
                });
              },
              title: Text(
                "Gluten-free",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              ),
              subtitle: Text(
                "Only include gluten-free meals.",
                style: theme.textTheme.labelMedium!.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              ),
              activeColor: theme.colorScheme.tertiary,
              contentPadding: const EdgeInsetsDirectional.only(
                start: 34,
                end: 22,
              ),
            ),
            SwitchListTile(
              value: isLactose,
              onChanged: (value) {
                setState(() {
                  isLactose = value;
                });
              },
              title: Text(
                "Lactose-free",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              ),
              subtitle: Text(
                "Only include lactose-free meals.",
                style: theme.textTheme.labelMedium!.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              ),
              activeColor: theme.colorScheme.tertiary,
              contentPadding: const EdgeInsetsDirectional.only(
                start: 34,
                end: 22,
              ),
            ),
            SwitchListTile(
              value: isVegetarian,
              onChanged: (value) {
                setState(() {
                  isVegetarian = value;
                });
              },
              title: Text(
                "Vegetarian",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              ),
              subtitle: Text(
                "Only include vegetarian-free meals.",
                style: theme.textTheme.labelMedium!.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              ),
              activeColor: theme.colorScheme.tertiary,
              contentPadding: const EdgeInsetsDirectional.only(
                start: 34,
                end: 22,
              ),
            ),
            SwitchListTile(
              value: isVegan,
              onChanged: (value) {
                setState(() {
                  isVegan = value;
                });
              },
              title: Text(
                "Vegan",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              ),
              subtitle: Text(
                "Only include vegan-free meals.",
                style: theme.textTheme.labelMedium!.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              ),
              activeColor: theme.colorScheme.tertiary,
              contentPadding: const EdgeInsetsDirectional.only(
                start: 34,
                end: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
