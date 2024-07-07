import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/data/api_manager.dart';
import 'package:islami/data/model/RadioModel.dart';
import 'package:islami/ui/screens/home/tabs/Radio/radio_item.dart';

import '../../../../utilities/app_colors.dart';

class RadioTab extends StatelessWidget {


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
               return Center(child: CircularProgressIndicator(),);
             }
             else {
               return ListView.builder(
                 scrollDirection: Axis.horizontal,
                   itemCount:  snapshot.data!.length??0,

                   itemBuilder:(context , int ){
                     return RadioItem(radios: snapshot.data![int]);

                   });
             }
             }
         ),
          Spacer()
        ],

      ),
    );
  }
}
