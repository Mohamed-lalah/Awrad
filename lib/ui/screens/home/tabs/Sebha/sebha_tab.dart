import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/utilities/app_theme.dart';
import 'package:islami/ui/utilities/app_utlities.dart';

import '../../../../utilities/app_colors.dart';

class SebhaTab extends StatelessWidget {

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
                 child: Image.asset(AppUtlities.headSebha,
                 fit: BoxFit.fill,
                  height: height*0.1 ,
                 width: width*0.2,),
               ),
             ),

             Image.asset(AppUtlities.bodySebha,
               fit: BoxFit.fill,
               height: height*0.25 ,
               width: width*0.5,),

           ],
         ),



         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("number of tasbeh",style: AppTheme.settingTabTitle,),
           ],
         ),
         SizedBox(height: 50,),

         Container(
           width: 69,
           height: 81,
           decoration: BoxDecoration(
               color: Color(0xffB7935F),
               shape: BoxShape.rectangle,
               border: Border.all(
                   color: AppColors.primiary,

               ),
               borderRadius: BorderRadius.circular(30)
           ),
           child: Center(child: Text("30",style: TextStyle(color: AppColors.accent),)),
         ),


         SizedBox(height: 30,),
         Container(
           decoration: BoxDecoration(
               border: Border.all(
                 color: AppColors.primiary,
                 width: 10,
               ),
               borderRadius: BorderRadius.circular(60),
               color: AppColors.primiary
           ),
           child: const Text("Allah Akbur",style: TextStyle(color: AppColors.white,fontSize: 25
            ,fontWeight: FontWeight.w400),),

         ),




     ]
     ),
   );
  }
}
