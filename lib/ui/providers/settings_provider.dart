import 'package:flutter/material.dart';

class SettingsProvidr extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  void enableDarkMode() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  void enableLightMode() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }
}
