import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/layout/cubit/cubit.dart';
import 'package:meals/layout/home_screen.dart';
import 'package:meals/shared/components/constants.dart';
import 'package:meals/shared/cubit/bloc_observer.dart';
import 'package:meals/shared/cubit/cubit.dart';
import 'package:meals/shared/cubit/states.dart';
import 'package:meals/shared/network/local/cache_helper.dart';
import 'package:meals/shared/styles/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  bool isDark = CacheHelper.getData(key: "isDark") ?? false;
  runApp(MyApp(isDark));
}

class MyApp extends StatelessWidget {
  final bool isDark;

  const MyApp(this.isDark, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) =>
              AppCubit()..changeAppMode(fromShared: isDark),
        ),
        BlocProvider(
          create: (BuildContext context) => MealsCubit(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: cubit.isDark ? ThemeMode.dark : ThemeMode.light,
            home: HomeScreen(
              filteredItems: initialFilters,
            ),
          );
        },
      ),
    );
  }
}
