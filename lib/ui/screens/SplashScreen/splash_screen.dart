
import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/home_screen.dart';
import 'package:islami/ui/utilities/app_utlities.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset(Theme.of(context).brightness==Brightness.light?
        AppUtlities.splash :AppUtlities.splashDark , fit:  BoxFit.fill,),
        width: double.infinity,

      ),
    );
  }
}
