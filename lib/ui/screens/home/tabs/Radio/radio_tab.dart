import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/data/api_manager.dart';
import 'package:islami/data/model/RadioModel.dart';
import 'package:islami/ui/screens/home/tabs/Radio/radio_item.dart';

import '../../../../utilities/app_colors.dart';

class RadioTab extends StatefulWidget {


  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  late AudioPlayer audioPlayer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer= AudioPlayer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;



    return  Scaffold(
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
      Image.asset("assets/images/radio1x.png", height: height*0.2, width: width,),
          Spacer(),
         FutureBuilder<List<Radios>?>(future: ApiManager.getRadios(),
             builder: (context , snapshot){
             if (snapshot.hasError){
               return Center(child:  Text(snapshot.toString()),);
             }
             else if (snapshot.connectionState== ConnectionState.waiting){
               return Center(child: CircularProgressIndicator(
                 color: Theme.of(context).brightness==Brightness.light?
                 AppColors.primiary : AppColors.accentDark,
               ),);
             }
             else {
               return SizedBox(
                 height:  height*0.3,
                 child: ListView.builder(
                   physics: PageScrollPhysics(),
                   itemExtent: width ,
                   scrollDirection: Axis.horizontal,
                     itemCount:  snapshot.data!.length??0,

                     itemBuilder:(context , int ){
                       return RadioItem(radios: snapshot.data![int], audioPlayer: audioPlayer,);

                     }),
               );
             }
             }
         ),
          Spacer()
        ],

      ),
    );
  }
}
