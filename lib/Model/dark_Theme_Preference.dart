import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class DarkThemePreferenes{
  static const THEME_STATUS = "THEMESTATUS";
  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, value);

  }
  Future<Object> getTheme() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(THEME_STATUS, ) ?? false;

  }
}