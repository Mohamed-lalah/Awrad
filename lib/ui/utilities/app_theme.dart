
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'package:google_fonts/google_fonts.dart';


abstract class AppTheme {

  static TextStyle? appBarTextStyle = TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
  color:    AppColors.accent);

  static TextStyle  surahTextStyle= TextStyle(color: Color(0xff242424),fontSize: 25,fontWeight: FontWeight.normal);
  static TextStyle  rowTextStyle= TextStyle(color: Color(0xff242424),fontSize: 25,fontWeight: FontWeight.w600);
  static TextStyle  settingTabTitle= GoogleFonts.elMessiri(
    textStyle: TextStyle(color: AppColors.accent,fontSize: 25, fontWeight: FontWeight.w600)
  );
  static TextStyle  settingOptionTitle= TextStyle(color: AppColors.accent,fontSize: 22, fontWeight: FontWeight.normal);
  static TextStyle  versesOrHadethStyle= TextStyle(color: AppColors.accent,
    fontSize: 25,);
  static TextStyle  sebhaCount = GoogleFonts.inter(
    textStyle:TextStyle(color: Color(0xff242424),fontWeight: FontWeight.normal,fontSize: 25)
  );

  static ThemeData  lightThemeData= ThemeData(
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primiary,
        onPrimary: AppColors.primiary,
        secondary: AppColors.primiary,
        onSecondary: AppColors.primiary,
        error: AppColors.primiary,
        onError: AppColors.primiary,
        background: AppColors.primiary,
        onBackground: AppColors.primiary,
        surface: AppColors.primiary,
        onSurface: AppColors.primiary),

    scaffoldBackgroundColor:  AppColors.transparent,
    primaryColor: AppColors.primiary,
    cardColor:  AppColors.primiary,
    canvasColor: AppColors.accent,
    appBarTheme:   AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.transparent,
      elevation: 0,
      titleTextStyle: appBarTextStyle,

    ),
    dividerTheme: const DividerThemeData(
      thickness: 1,
      color: AppColors.primiary,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.accent,
      selectedIconTheme: IconThemeData(size: 32),
      unselectedIconTheme: IconThemeData(size: 25),
      unselectedItemColor: AppColors.white
    ),
    textTheme: TextTheme(
      bodySmall: settingOptionTitle,
      bodyMedium:  settingTabTitle,
      displayMedium: rowTextStyle,
      displayLarge: surahTextStyle,
      headlineLarge: versesOrHadethStyle,
      titleLarge: sebhaCount,
      labelMedium: sebhaCount.copyWith(color: AppColors.white),
      

    )


  );



  static ThemeData   darkThemeDate= ThemeData(
      scaffoldBackgroundColor:  AppColors.transparent,
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: AppColors.primiary,
          onPrimary: AppColors.primiary,
          secondary: AppColors.primiary,
          onSecondary: AppColors.primiary,
          error: AppColors.primiary,
          onError: AppColors.primiary,
          background: AppColors.primiary,
          onBackground: AppColors.primiary,
          surface: AppColors.primiary,
          onSurface: AppColors.primiary),
      primaryColor: AppColors.primiaryDark,
      cardColor:  AppColors.accentDark ,
      canvasColor: AppColors.accentDark,

    appBarTheme:   AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.transparent,
        elevation: 0,
        titleTextStyle: appBarTextStyle!.copyWith(color: Colors.white),

      ),

      dividerTheme: const DividerThemeData(
        thickness: 1,
        color: AppColors.accentDark,
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColors.accentDark ,
          selectedIconTheme: IconThemeData(size: 32),
          unselectedIconTheme: IconThemeData(size: 28),
          unselectedItemColor: AppColors.white
      ),

      textTheme: TextTheme(
        bodySmall: settingOptionTitle.copyWith(color: AppColors.white),
        bodyMedium: settingTabTitle.copyWith(color: AppColors.white),
        displayMedium: rowTextStyle.copyWith(color: AppColors.white),
        displayLarge: surahTextStyle.copyWith(color: AppColors.white),
        headlineLarge: versesOrHadethStyle.copyWith(color: AppColors.accentDark),
        titleLarge: sebhaCount.copyWith(color: AppColors.white),
        labelMedium: sebhaCount

      )


  );
}
