import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  //initial theme = bright
  ThemeMode themeMode = ThemeMode.light;

  //if the theme is light then we return true
  bool get isLightMode => themeMode == ThemeMode.light;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
