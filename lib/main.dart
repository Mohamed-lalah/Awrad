import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/shared.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/screens/home/home_screen.dart';
import 'package:islami/ui/screens/screen_details/details_screeen.dart';
import 'package:islami/ui/utilities/app_colors.dart';
import 'package:islami/ui/utilities/app_theme.dart';
import 'package:islami/ui/utilities/app_utlities.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Shared.preferences= await SharedPreferences.getInstance();
  runApp( ChangeNotifierProvider(
      create: (_)=> prefsHelper()..sharedInit(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    prefsHelper provider = Provider.of(context);
    return MaterialApp(
      localizationsDelegates:  const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: [Locale("en"),Locale("ar")],

      locale: Locale(provider.currentLocale),

      themeMode: provider.currentMode,
      theme: AppTheme.lightThemeData,
      darkTheme: AppTheme.darkThemeDate,


    routes:   {
      HomeScreen.routeName :(_)=> HomeScreen(),
      DetailsScreen.routeName: (_)=>DetailsScreen(),
    },
      initialRoute: HomeScreen.routeName,
    );
  }
}
