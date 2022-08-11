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
      iconTheme: IconThemeData(color: selectedColor),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: selectedColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: selectedColor,
      ),
      headline3: TextStyle(
        fontSize: 25,
        color: selectedColor,
        )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: standardColor,
      selectedItemColor: selectedColor,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 35),
      unselectedIconTheme: IconThemeData(size: 35),
      showUnselectedLabels: false,
    ),
  );
  static final ThemeData darkTheme=ThemeData();
}