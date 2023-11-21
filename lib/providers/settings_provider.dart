



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/shared.dart';
import 'package:shared_preferences/shared_preferences.dart';

class prefsHelper  extends ChangeNotifier{

  String currentLocale = "en";
  bool arSwitch= false ;
  bool  darkModeSwitch= false;





  void sharedInit () async {
    String? newLnage =Shared.getLocale();
    String ? newMode= Shared.getMode();
    setCurrentLocale(newLnage??"en");
    if (currentLocale=="ar")
      arSwitch=true;
    if (newMode=="light"){
      setCurrentMode(ThemeMode.light);
    }
    if (newMode=="dark"){
      darkModeSwitch=true;
      setCurrentMode(ThemeMode.dark);
    }

  }

  ThemeMode currentMode = ThemeMode.light;

  bool isDarkMode ()=> currentMode==ThemeMode.dark;

  void setCurrentLocale (String newLocale){
    currentLocale= newLocale;
    Shared.setLocale(newLocale);
    notifyListeners();

  }

  void setCurrentMode (ThemeMode newThemeMode){
    currentMode= newThemeMode;
    if (newThemeMode== ThemeMode.light){
      Shared.setTheme("light");
    }
    if (newThemeMode== ThemeMode.dark){
      Shared.setTheme("dark");
    }



    notifyListeners();
  }
}