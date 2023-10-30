import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/utilities/app_utlities.dart';
import 'package:islami/ui/utilities/constant.dart';

import '../../../../utilities/app_colors.dart';
import '../../../../utilities/app_theme.dart';

class QuranTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 3,child: Image.asset(AppUtlities.quranTabLogo)),
        SizedBox(height: 7,),
        const Divider(
          color: AppColors.primiary,
          thickness: 3,
          height: 2,
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Surah Name",style:AppTheme.rowTextStyle),
              Text("Verses Numbers",style: AppTheme.rowTextStyle,),

            ],
          ),
        ),
        Divider(
          color: AppColors.primiary,
          thickness: 3,
          height: 2,
        ),
        Expanded(flex: 7,
        child: ListView.builder(itemBuilder:(_,index)
          =>  TextButton(
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Text(Constants.SurahNames[index],style: AppTheme.surahTextStyle,
                textAlign: TextAlign.center,),),
                Expanded(child: Text(Constants.surahVerses[index],style: AppTheme.surahTextStyle,
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
