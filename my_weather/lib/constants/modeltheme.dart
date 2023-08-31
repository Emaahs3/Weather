import 'package:my_weather/constants/mythemepreference.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class ModelTheme extends ChangeNotifier {
  late bool _is_Dark;
  late MyThemePreferences _preferences;
  bool get isDark => _is_Dark;

  ModelTheme() {
    _is_Dark = true;
    _preferences = MyThemePreferences();
    getPreferences();
  }
  set isDark(bool value) {
    _is_Dark = value;
    _preferences.setTheme(value);
    // notifyListeners();
  }

  getPreferences() async {
    _is_Dark = await _preferences.getTheme();
    notifyListeners();
  }
}
