import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingProvider  extends ChangeNotifier{

  String currentLocale = "en";

  bool arSwitch= false ;
  bool darkModeSwitch= false;

  ThemeMode currentMode = ThemeMode.light;


  bool isDarkMode ()=> currentMode==ThemeMode.dark;

  void setCurrentLocale (String newLocale){

    currentLocale= newLocale;
    notifyListeners();

  }

  void setCurrentMode (ThemeMode newThemeMode){
    currentMode= newThemeMode;
    notifyListeners();
  }
}