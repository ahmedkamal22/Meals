import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/layout/home_screen.dart';
import 'package:meals/shared/components/components.dart';
import 'package:meals/shared/components/constants.dart';
import 'package:meals/shared/cubit/cubit.dart';
import 'package:meals/shared/cubit/states.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state) {},
      builder: (BuildContext context, AppStates state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text("Settings"),
            leading: IconButton(
                onPressed: () {
                  navigateAndFinish(
                    context,
                    HomeScreen(
                      filteredItems: initialFilters,
                    ),
                  );
                },
                icon: const Icon(Icons.arrow_back_ios)),
          ),
          body: WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: Column(
              children: [
                defaultSwitchListTile(
                  context: context,
                  value: cubit.isDark,
                  onChanged: (value) {
                    cubit.changeAppMode();
                  },
                  text: "Change Mode",
                  subtitle: "Swap between b&w themes .",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
