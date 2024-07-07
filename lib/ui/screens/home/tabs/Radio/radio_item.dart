
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami/data/model/RadioModel.dart';

import '../../../../utilities/app_colors.dart';

class RadioItem extends StatelessWidget {
 late  Radios radios ;
 late  AudioPlayer audioPlayer ;
   RadioItem({super.key, required this.radios, required this.audioPlayer});


  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text(radios.name??"", style: Theme.of(context).textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 25
        ),),
        SizedBox(height: height*0.1,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){
              play();
            }, icon: Icon(Icons.play_arrow, size: 40,color: Theme.of(context).brightness==Brightness.light?
            AppColors.primiary : AppColors.accentDark,)),
            IconButton(onPressed: (){
              stop();
            }, icon: Icon(Icons.pause, size: 40,color: Theme.of(context).brightness==Brightness.light?
            AppColors.primiary : AppColors.accentDark,))
          ],
        ),
      ],

    );
  }
 void play ()async{
   await audioPlayer.play(UrlSource(radios.url??""));
 }

 void stop () async{
    await audioPlayer.stop();
 }
}

