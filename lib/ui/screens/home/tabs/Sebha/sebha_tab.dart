import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/utilities/app_theme.dart';
import 'package:islami/ui/utilities/app_utlities.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../utilities/app_colors.dart';
import '../../../../utilities/constant.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int countZekr = 0;
  int countList = 0;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;
   return Container(
     width: width,
     margin: EdgeInsets.only(top: height*0.09),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Stack(
           clipBehavior: Clip.none,
           alignment: Alignment.topCenter,

           children: [
             Positioned(
               top: -height*0.07,
               child: Padding(
                 padding:  EdgeInsets.only(left: width*0.1),

                 child: Image.asset(Theme.of(context).brightness==Brightness.light? AppUtlities.headSebha
                 :AppUtlities.headSebhaDark,
                 fit: BoxFit.fill,
                  height: height*0.1 ,
                 width: width*0.2,),
               ),
             ),

             GestureDetector(
               onTap: (){
                 tasbehCount();
                 setState(() {});
               },
               child: Transform.rotate(
                 angle: angle ,
                 child: Image.asset( Theme.of(context).brightness==Brightness.light? AppUtlities.bodySebha
                   :AppUtlities.bodySebhaDark,
                   fit: BoxFit.fill,
                   height: height*0.25 ,
                   width: width*0.5,)
                  ,
               ),
             ),

           ],
         ),

         SizedBox(height: height*0.05,),

         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(AppLocalizations.of(context)!.tasbeh??"",style: Theme.of(context).textTheme.bodyMedium,),
           ],
         ),
         SizedBox(height: height*0.05,),

         Container(
           padding: EdgeInsets.all(height*0.025),
           decoration: BoxDecoration(
               color: Theme.of(context).primaryColor.withOpacity(0.57),
               borderRadius: BorderRadius.circular(25)
           ),
           child: Text("$countZekr",style: Theme.of(context).textTheme.titleLarge),

         ),

         SizedBox(height: height*0.03,),

         ElevatedButton(onPressed: (){
           tasbehCount();

            },
             style: ElevatedButton.styleFrom(
               backgroundColor:  Theme.of(context).cardColor,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(25),
               ),
             ),

             child:Text(
               "${Constants.Zekr[countList]}",style: Theme.of(context).textTheme.labelMedium
             )

         )




     ]
     ),
   );
  }
  void tasbehCount (){
    countZekr++;
    if (countZekr>33){
      countList++;
      countZekr=0;
    }
    if (countList ==Constants.Zekr.length){
      countList=0;
    }
    angle +=30;

    setState(() {});
  }


}
