
import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme {

  static TextStyle? appBarTextStyle = TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
  color:    AppColors.accent);

  static TextStyle  surahTextStyle= TextStyle(color: Color(0xff242424),fontSize: 25,fontWeight: FontWeight.normal);
  static TextStyle  rowTextStyle= TextStyle(color: Color(0xff242424),fontSize: 25,fontWeight: FontWeight.w600);
  static TextStyle  settingTabTitle= TextStyle(color: AppColors.accent,fontSize: 25, fontWeight: FontWeight.w600);
  static TextStyle  settingOptionTitle= TextStyle(color: AppColors.accent,fontSize: 22, fontWeight: FontWeight.normal);

  static ThemeData  lightThemeData= ThemeData(
    scaffoldBackgroundColor:  AppColors.transparent,
    primaryColor: AppColors.primiary,

    dividerTheme: DividerThemeData(
      thickness: 3,
      color: AppColors.primiary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.accent,
      selectedIconTheme: IconThemeData(size: 32),
      unselectedIconTheme: IconThemeData(size: 25),
      unselectedItemColor: AppColors.white
    ),
    textTheme: TextTheme(

    )


  );
  static ThemeData   darkThemeDate= ThemeData(

  );

}
