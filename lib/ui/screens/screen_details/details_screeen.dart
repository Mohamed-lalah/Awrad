import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/modem/details_screen_argument.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../utilities/app_colors.dart';
import '../../utilities/app_theme.dart';
import '../../utilities/app_utlities.dart';

class  DetailsScreen extends StatefulWidget {
  static const String routeName ="detailsScreeen";

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  late DetailsScreenArgument argument ;
  String fileContent  ="";

  @override
  Widget build(BuildContext context) {
    argument= ModalRoute.of(context)!.settings.arguments as DetailsScreenArgument;
    SettingProvider provider = Provider.of(context);
     readFile();
    return Container(
      decoration:  BoxDecoration(image: DecorationImage(image: AssetImage(AppUtlities.background),fit: BoxFit.fill)),
      child:  Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.transparent,
          elevation: 0,
          title:Text("${argument.title}",style:AppTheme.appBarTextStyle),



        ),
        body: (fileContent.isEmpty)? Center(child: CircularProgressIndicator()) :
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(fileContent,style: TextStyle(color: AppColors.accent,
            fontSize: 25,),textDirection: TextDirection.rtl

              ,textAlign: TextAlign.center,),
          ),
        )



      ),
    );
  }

   void readFile() async  {
    String file =  await rootBundle.loadString (argument.isQuranFile?
    "assets/quran/${argument.content}" :("assets/hadeth/${argument.content}") );
    fileContent= file;
      List<String>fileLines = fileContent.split("\n");
      for (int i=0 ;i<fileLines.length;i++){
        fileLines[i]+= argument.isQuranFile ? " ${i+1} " : " ";
      }
      fileContent=fileLines.join();
      setState(() {
      });
    }




  }

