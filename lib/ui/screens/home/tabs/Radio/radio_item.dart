
import 'package:flutter/material.dart';
import 'package:islami/data/model/RadioModel.dart';

class RadioItem extends StatelessWidget {
 late  Radios radios ;
   RadioItem({super.key, required this.radios});

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text(radios.name??""),
        SizedBox(height: height*0.1,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow, size: 40,color: Theme.of(context).primaryColor,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.pause, size: 40,color: Theme.of(context).primaryColor,))
          ],
        ),
      ],

    );
  }
}
