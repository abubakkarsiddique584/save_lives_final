import 'package:flutter/material.dart';
import 'package:save_lives_final/Model/dark_Theme_Preference.dart';

class DarkThemeProvider with ChangeNotifier{
  DarkThemePreferenes darkThemePreferenes = DarkThemePreferenes();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  set darkTheme (bool value){
    _darkTheme = value;
    darkThemePreferenes.setDarkTheme(value);
    notifyListeners();
  }
}