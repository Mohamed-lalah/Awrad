import 'package:flutter/cupertino.dart';

class SettingProvider  extends ChangeNotifier{

  String currentLocale = "en";

  void setCurrentLocale (String newLocale){

    currentLocale= newLocale;
    notifyListeners();
  }
}