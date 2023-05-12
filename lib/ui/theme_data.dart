import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color lightMainTextColor = Color(0xFF242424);
  static const Color darkMainTextColor = Color(0xFFF8F8F8);
  static const Color darkAccentColor = Color(0xFFFACC1D);

  static var lightTheme = ThemeData(
    cardColor: Colors.white,
    primaryColor: const Color(0xFFB7935F),
    accentColor: lightPrimaryColor,
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          lightPrimaryColor,
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
        ),
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color(0xFF242424),
      unselectedItemColor: Colors.white,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)))),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        fontSize: 30,
        color: Color(0xFF242424),
      ),
    ),
    textTheme: const TextTheme(
      headline3: TextStyle(
          // ex.Screen title
          color: lightMainTextColor,
          fontSize: 32),
      headline5: TextStyle(
          // sub headers
          fontSize: 25,
          color: lightMainTextColor),
      bodyText1: TextStyle(fontSize: 24, color: lightMainTextColor),
      bodyText2: TextStyle(fontSize: 20, color: lightMainTextColor),
    ),
  );

  static var darkTheme = ThemeData(
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: darkAccentColor),
    cardColor: darkPrimaryColor,
    primaryColor: darkPrimaryColor,
    accentColor: darkAccentColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(color: darkMainTextColor, fontSize: 30),
        iconTheme: IconThemeData(color: Colors.white)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: darkAccentColor,
      unselectedItemColor: Colors.white,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: darkPrimaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)))),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          darkAccentColor,
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
        ),
      ),
    ),
    textTheme: const TextTheme(
      headline3: TextStyle(
          // ex.Screen title
          color: darkMainTextColor,
          fontSize: 32),
      headline5: TextStyle(
          // sub headers
          fontSize: 25,
          color: darkMainTextColor),
      bodyText1: TextStyle(fontSize: 24, color: darkMainTextColor),
      bodyText2: TextStyle(fontSize: 20, color: darkMainTextColor),
    ),
  );
}
