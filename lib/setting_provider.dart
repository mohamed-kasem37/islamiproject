import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  String curentlanguage = 'en';
  ThemeMode currentTheme = ThemeMode.light;

  void changeThem(ThemeMode newtheme) {
    if (newtheme == currentTheme) {
      return;
    }
    currentTheme = newtheme;
    notifyListeners();
  }

  void changelanguage(String newlang) {
    if (newlang == curentlanguage) {
      return;
    }
    curentlanguage = newlang;
    notifyListeners();
  }

  bool isDarkMode() {
    return currentTheme == ThemeMode.dark;
  }
}
