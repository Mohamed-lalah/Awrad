import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/modem/details_screen_argument.dart';

import '../../utilities/app_colors.dart';
import '../../utilities/app_theme.dart';
import '../../utilities/app_utlities.dart';

class  DetailsScreen extends StatelessWidget {
  static const String routeName ="detailsScreeen";
  late DetailsScreenArgument argument ;


  @override
  Widget build(BuildContext context) {
    argument= ModalRoute.of(context)!.settings.arguments as DetailsScreenArgument;
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


      ),
    );
  }
}
