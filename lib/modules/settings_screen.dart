import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/generated/l10n.dart';
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
            title: Text(S.of(context).Settings),
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
                  text: S.of(context).Change_Mode,
                  subtitle: S.of(context).Swap_Themes,
                ),
                InkWell(
                  onTap: () {
                    cubit.changeLocale();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        const Icon(Icons.flag),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(S.of(context).Language),
                        const Spacer(),
                        Text(cubit.appLocale.toString() == "en"
                            ? 'العربية'
                            : 'English'),
                        const SizedBox(
                          width: 15,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 17,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
