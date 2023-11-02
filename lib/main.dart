import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/screens/home/home_screen.dart';
import 'package:islami/ui/screens/screen_details/details_screeen.dart';
import 'package:islami/ui/utilities/app_colors.dart';
import 'package:islami/ui/utilities/app_utlities.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


void main() {
  runApp( ChangeNotifierProvider(
      create: (_)=> SettingProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return MaterialApp(
      localizationsDelegates:  const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: [Locale("en"),Locale("ar")],

      locale: Locale(provider.currentLocale),

    routes:   {
      HomeScreen.routeName :(_)=> HomeScreen(),
      DetailsScreen.routeName: (_)=>DetailsScreen(),
    },
      initialRoute: HomeScreen.routeName,
    );
  }
}
