import 'package:flutter/material.dart';

class SettingsProvidr extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';

  void changeLanguage(String newLanguage) {
    languageCode = newLanguage;
    notifyListeners();
  }

  void enableDarkMode() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  void enableLightMode() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }
}
