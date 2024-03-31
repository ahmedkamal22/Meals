import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0.0,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
    titleSpacing: 20.0,
  ),
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 30,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.blue,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
  ),
);
ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: HexColor("333739"),
  appBarTheme: AppBarTheme(
    backgroundColor: HexColor("333739"),
    elevation: 0.0,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: HexColor("333739"),
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
    titleSpacing: 20.0,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: HexColor("333739"),
    unselectedItemColor: Colors.grey,
    elevation: 30,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.blue,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
  ),
);
