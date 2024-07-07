import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'model/RadioModel.dart';

class ApiManager {

   static Future <List<Radios>?> getRadios ()async{

    try{
      Uri uri = Uri.https("mp3quran.net" ,"/api/v3/radios");

      Response response =  await get(uri);

      Map json = jsonDecode(response.body);

      RadioModel radioModel =RadioModel.fromJson(json);

      return radioModel.radios;

    }catch(e){
      print(e.toString());
    }




  }
}