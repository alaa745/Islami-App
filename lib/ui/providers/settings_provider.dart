import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvidr extends ChangeNotifier {
  ThemeMode? themeMode;
  String languageCode = 'en';

  SettingsProvidr() {
    getThemeData();
    getLanguageData();
  }

  void changeLanguage(String newLanguage) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('language', newLanguage);
    languageCode = newLanguage;
    notifyListeners();
  }

  void getLanguageData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String language = preferences.getString('language') ?? 'en';
    if (language == 'en') {
      languageCode = 'en';
    } else if (language == 'ar') {
      languageCode = 'ar';
    }
    notifyListeners();
  }

  void getThemeData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String mode = preferences.getString('themeMode') ?? 'light';
    if (mode == 'light') {
      themeMode = ThemeMode.light;
    } else if (mode == 'dark') {
      themeMode = ThemeMode.dark;
    }
    notifyListeners();
  }

  void enableDarkMode() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('themeMode', 'dark');
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  void enableLightMode() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('themeMode', 'light');
    themeMode = ThemeMode.light;
    notifyListeners();
  }
}
