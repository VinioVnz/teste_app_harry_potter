import 'package:flutter/material.dart';

class ThemeViewModel extends ChangeNotifier {

  ThemeMode _themeMode;
  ThemeViewModel(this._themeMode);
  
  ThemeMode get themeMode => _themeMode;
  
  void toggleTheme() {
    if (_themeMode == ThemeMode.dark || _themeMode == ThemeMode.system) {
      _themeMode = ThemeMode.light;
    } else {
      _themeMode = ThemeMode.dark;
    }
    notifyListeners();
  }

  void setTheme(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }
}
