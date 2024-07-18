

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared {
  static late SharedPreferences preferences ;


  static setLocale(String value )async{
    await  preferences.setString("lang",value);
  }

  static getLocale (){
    return preferences.getString("lang");
  }

  static setTheme(String newMode)async{
    await preferences.setString("Theme", newMode);
  }

  static getMode(){
    return preferences.getString("Theme");
  }

  static setThemeSwitch(bool themeSwitch )async{
    await  preferences.setBool("themeSwitch",themeSwitch);
  }

  static getThemeSwitch(){
    return preferences.getBool("themeSwitch");
  }

  static setlangSwitch(bool langSwitch )async{
    await  preferences.setBool("langSwitch",langSwitch);
  }

  static getlangSwitch(){
    return preferences.getBool("langSwitch");
  }
}