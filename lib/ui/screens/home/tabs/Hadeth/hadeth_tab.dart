import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../modem/details_screen_argument.dart';
import '../../../../utilities/app_colors.dart';
import '../../../../utilities/app_theme.dart';
import '../../../../utilities/app_utlities.dart';
import '../../../../utilities/constant.dart';
import '../../../screen_details/details_screeen.dart';

class HadethTab extends StatelessWidget {
  List <String> ahadeth =[];
  @override
  Widget build(BuildContext context) {
   fillHadeth();
    return Column(
      children: [
        Expanded(flex: 3,child: Image.asset(AppUtlities.ahadethTabLogo)),
        SizedBox(height: 7,),
        const Divider(),
        Expanded(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("الأحاديث ",style: AppTheme.rowTextStyle,),

              ],
            ),
          ),
        ),
        Divider(),
        Expanded(flex: 7,
            child: ListView.builder(itemBuilder:(_,index)
            =>  TextButton(
              onPressed: (){
                Navigator.pushNamed(context, DetailsScreen.routeName,
                    arguments:  DetailsScreenArgument(isQuranFile: false,
                        title:ahadeth[index],
                        content: "h${index +1}.txt" ));
              },
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(ahadeth[index],style: TextStyle(color: AppColors.accent,fontSize: 25,
                  fontWeight: FontWeight.normal),)
                ],
              ),
            ),
              itemCount: ahadeth.length,
            )
        ),




      ],
    );

  }
  void fillHadeth (){
  for (int i= 0;i<50;i++){
    String constant=" الحديث رقم ";
    String result ="  ${i+1} " + constant;
     ahadeth.add(result);
  }
}
}
