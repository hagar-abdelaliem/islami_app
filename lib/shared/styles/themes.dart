import 'package:flutter/material.dart';

class MyTheme{
  static const standardColor = Color(0xffB7935F);
  static const selectedColor = Color(0xff242424);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: standardColor,
    canvasColor: standardColor,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Color(0xff242424),
        fontSize: 30,
        fontWeight: FontWeight.bold,
      )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: standardColor,
      selectedItemColor: selectedColor,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 40),
      unselectedIconTheme: IconThemeData(size: 40),
      showUnselectedLabels: false,
    ),
  );
  static final ThemeData darkTheme=ThemeData();
}