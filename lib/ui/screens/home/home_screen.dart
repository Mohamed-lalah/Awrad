import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/screens/home/tabs/Hadeth/hadeth_tab.dart';
import 'package:islami/ui/screens/home/tabs/Radio/radio_tab.dart';
import 'package:islami/ui/screens/home/tabs/Sebha/sebha_tab.dart';
import 'package:islami/ui/screens/home/tabs/quran/quran_tab.dart';
import 'package:islami/ui/screens/home/tabs/setting/setting.dart';
import 'package:islami/ui/utilities/app_theme.dart';
import 'package:islami/ui/utilities/app_utlities.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';import '../../utilities/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String  routeName= "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currenttabindex=0;

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    prefsHelper provider = Provider.of(context);
    return Container(
      decoration:  BoxDecoration(image:

      DecorationImage(image: provider.isDarkMode()? AssetImage(AppUtlities.backGroundDark)
          : AssetImage(AppUtlities.background),

          fit: BoxFit.fill)
      ),
      child:  Scaffold(
        //backgroundColor: AppColors.transparent,
        appBar: AppBar(
          title:Text(AppLocalizations.of(context)!.islami,),
        ),
          bottomNavigationBar: buildBottomNavigationBar(),
        body: tabs[currenttabindex],

      ),
    );
  }

  Widget buildBottomNavigationBar() => Theme(
    data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),
    child: BottomNavigationBar(
      currentIndex: currenttabindex,
      onTap: (index){
        currenttabindex= index;
        setState(() {});

      },
      items: [
        BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppUtlities.iconQuran)),label: "Quran"),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppUtlities.iconhadeth)),label: "Hadeth"),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppUtlities.iconSebha)),label: "Sebha"),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppUtlities.iconradio)),label: "Radio"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: AppLocalizations.of(context)!.settings),

      ],
    ),
  );
}
