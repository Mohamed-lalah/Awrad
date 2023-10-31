import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/home_screen.dart';
import 'package:islami/ui/screens/screen_details/details_screeen.dart';
import 'package:islami/ui/utilities/app_colors.dart';
import 'package:islami/ui/utilities/app_utlities.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: AppColors.primiary),
    routes:   {
      HomeScreen.routeName :(_)=> HomeScreen(),
      DetailsScreen.routeName: (_)=>DetailsScreen(),
    },
      initialRoute: HomeScreen.routeName,
    );
  }
}
