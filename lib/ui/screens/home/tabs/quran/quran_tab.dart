import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/modem/details_screen_argument.dart';
import 'package:islami/ui/screens/screen_details/details_screeen.dart';
import 'package:islami/ui/utilities/app_utlities.dart';
import 'package:islami/ui/utilities/constant.dart';

import '../../../../utilities/app_colors.dart';
import '../../../../utilities/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 3,child: Image.asset(AppUtlities.quranTabLogo)),
        SizedBox(height: 7,),
        const Divider(),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(AppLocalizations.of(context)!.surahName,style:Theme.of(context).textTheme.displayMedium),
              Text(AppLocalizations.of(context)!.versesNumbers,style: Theme.of(context).textTheme.displayMedium,),

            ],
          ),
        ),
        Divider(),
        Expanded(flex: 7,
        child: ListView.builder(itemBuilder:(_,index)
          =>  TextButton(
            onPressed: (){
              Navigator.pushNamed(context, DetailsScreen.routeName,
               arguments:  DetailsScreenArgument(isQuranFile: true,
                title:Constants.SurahNames[index],
                content: "${index +1}.txt" ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Text(Constants.SurahNames[index],style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,),),
                Expanded(child: Text(Constants.surahVerses[index],style:Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,),),
              ],
            ),
          ),
          itemCount: Constants.SurahNames.length,
         )
        ),




      ],
    );
  }
}
