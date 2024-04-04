import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:meals/models/category_model.dart';
import 'package:meals/models/meals_model.dart';
import 'package:meals/modules/meal_details_screen.dart';
import 'package:meals/modules/meals_screen.dart';
import 'package:meals/shared/components/constants.dart';
import 'package:transparent_image/transparent_image.dart';

navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (route) => false,
    );

Widget defaultTextButton({
  required String text,
  required Function()? onPressed,
  bool isUpper = true,
}) =>
    TextButton(
        onPressed: onPressed,
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ));

Widget defaultButton({
  double width = double.infinity,
  Color color = Colors.blue,
  double radius = 0.0,
  bool isUpper = true,
  required String text,
  required Function()? onPressed,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );

Widget defaultTextFormField({
  required TextInputType keyboard,
  required TextEditingController controller,
  required TextInputAction action,
  required String? Function(String?)? validator,
  Function(String)? onFieldSubmitted,
  required IconData prefixIcon,
  required String? labelText,
  IconData? suffixIcon,
  Function()? suffixPressed,
  Function()? onTap,
  Function(String)? onChanged,
  bool isPassword = false,
  required Color color,
}) =>
    TextFormField(
      keyboardType: keyboard,
      obscureText: isPassword,
      controller: controller,
      textInputAction: action,
      validator: validator,
      onChanged: onChanged,
      autocorrect: true,
      obscuringCharacter: "*",
      onTap: onTap,
      style: TextStyle(
        color: color,
      ),
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        labelStyle: TextStyle(
          color: color,
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: color,
        ),
        labelText: labelText,
        suffixIcon: suffixIcon != null
            ? IconButton(onPressed: suffixPressed, icon: Icon(suffixIcon))
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: color,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: color,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: color,
          ),
        ),
      ),
    );

Widget defaultTestScreen({
  required String text,
}) =>
    Center(
        child: Text(
      text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ));

showToast({required String msg, required ToastStates state}) =>
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: changeToastColor(state),
        textColor: Colors.white,
        fontSize: 16.0);

enum ToastStates { Success, Warning, Error }

changeToastColor(ToastStates state) {
  Color? color;
  switch (state) {
    case ToastStates.Success:
      color = Colors.green;
      break;
    case ToastStates.Warning:
      color = Colors.amberAccent;
      break;
    case ToastStates.Error:
      color = Colors.red;
      break;
    default:
      color = Colors.black;
  }
  return color;
}

Widget defaultLine() => const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Divider(
        height: 2,
        color: Colors.grey,
      ),
    );

Widget buildRowItem({
  required IconData icon,
  required String label,
}) =>
    Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: Colors.grey[300],
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          label,
          style: TextStyle(color: Colors.grey[300], fontSize: 16),
        ),
      ],
    );

showSnackBar(context, String message) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.blue,
      ),
    );

Widget buildMealItem(context, MealsModel meals) => InkWell(
      onTap: () {
        navigateTo(
            context,
            MealDetailsScreen(
              meals: meals,
            ));
      },
      borderRadius: BorderRadius.circular(20),
      splashColor: Theme.of(context).primaryColor,
      child: Card(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Hero(
                tag: meals.id!,
                child: FadeInImage(
                  fadeInCurve: Curves.fastLinearToSlowEaseIn,
                  placeholder: MemoryImage(kTransparentImage),
                  image: NetworkImage(
                    "${meals.imageUrl}",
                  ),
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.black.withOpacity(.8),
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "${meals.title}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildRowItem(
                          icon: Icons.watch_later_outlined,
                          label: "${meals.duration} min"),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: buildRowItem(
                            icon: Icons.work,
                            label: meals.complexity.toString().split(".").last),
                      ),
                      buildRowItem(
                          icon: Icons.attach_money_outlined,
                          label:
                              meals.affordability.toString().split(".").last),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

Widget buildGridItem(context, CategoryModel model) => InkWell(
      onTap: () {
        final filteredMeals = availableMeals
            .where((meal) => meal.mealCategories!.contains(model.id))
            .toList();
        navigateTo(
            context,
            MealsScreen(
              title: model.title,
              meals: filteredMeals,
            ));
      },
      borderRadius: BorderRadius.circular(10),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              model.color!.withOpacity(0.55),
              model.color!.withOpacity(0.9),
            ],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
          ),
          borderRadius: BorderRadiusDirectional.circular(16),
        ),
        child: Text(
          "${model.title}",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),
        ),
      ),
    );

Widget buildIngredientsItem(context, MealsModel meals) => SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 20,
          end: 20,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: meals.id!,
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "${meals.imageUrl}",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Ingredients",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 25, color: Colors.deepOrangeAccent.shade400),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Text(meals.ingredients![index],
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        height: .7,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  textAlign: TextAlign.center),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: meals.ingredients!.length,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Steps",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 25, color: Colors.deepOrangeAccent.shade400),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Text(meals.steps![index],
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      height: 1.1, fontSize: 14, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: meals.steps!.length,
            ),
          ],
        ),
      ),
    );

Widget defaultListTile({
  required context,
  required IconData icon,
  required String text,
  required Function()? onTap,
}) =>
    ListTile(
      leading: Icon(icon,
          size: 26, color: Theme.of(context).colorScheme.onBackground),
      title: Text(text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white)),
      hoverColor: Colors.blue,
      onTap: onTap,
    );

Widget customDrawer(
        {required context,
        required Function() filterNavigation,
        required Function() settingsNavigation}) =>
    Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      shadowColor: Colors.white,
      backgroundColor: HexColor("333739"),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(20),
          bottomEnd: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(.8),
                ],
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Cooking Up!",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          defaultListTile(
              context: context,
              icon: Icons.restaurant,
              text: "Meals",
              onTap: () {
                Navigator.pop(context);
              }),
          defaultListTile(
            context: context,
            icon: Icons.filter_alt,
            text: "Filters",
            onTap: filterNavigation,
          ),
          defaultListTile(
            context: context,
            icon: Icons.settings,
            text: "Settings",
            onTap: settingsNavigation,
          ),
        ],
      ),
    );

Widget defaultSwitchListTile({
  required context,
  required bool value,
  required Function(bool)? onChanged,
  required String text,
  required String subtitle,
}) =>
    SwitchListTile(
      value: value,
      onChanged: onChanged,
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: setColor(context),
            ),
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: setColor(context),
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsetsDirectional.only(
        start: 34,
        end: 22,
      ),
    );
