import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/utilities/app_theme.dart';
import 'package:islami/ui/utilities/app_utlities.dart';

import '../../utilities/app_colors.dart';

class HomeScreen extends StatelessWidget {
  static const String  routeName= "homeScreen";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(image: DecorationImage(image: AssetImage(AppUtlities.background),fit: BoxFit.fill)),
      child:  Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.transparent,
          elevation: 0,
          title: const Text("Islami",style:TextStyle(color: AppColors.accent,fontWeight: FontWeight.bold,fontSize: 30)),
        ),
          bottomNavigationBar: buildBottomNavigationBar(),
        
      ),
    );
  }
  Widget buildBottomNavigationBar() => Theme(
    data: ThemeData(canvasColor: AppColors.primiary),
    child: BottomNavigationBar(
      selectedItemColor: AppColors.accent,
      iconSize: 42,
      items: [
        BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppUtlities.iconQuran)),label: "Quran"),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppUtlities.iconhadeth)),label: "Hadeth"),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppUtlities.iconSebha)),label: "Sebha"),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppUtlities.iconradio)),label: "Radio"),
      ],
    ),
  );
}
