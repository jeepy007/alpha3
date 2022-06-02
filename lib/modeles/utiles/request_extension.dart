import 'dart:async';
import 'dart:convert';
//import 'package:get_it/get_it.dart';
import 'package:alpha3/modeles/User.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class RequestExtension<T> {
  static const String _urlEndpoint = 'http://15.188.11.154:3000/';
  static const String _urlEndpointSimple = 'http://15.188.11.154:3000/';

  
  

  Future<dynamic> loading(String url, dynamic data) async {
    print(url);
    print("++++++++++++++++++++++++++++++++");
    print(_urlEndpoint + url);

    final response= await http.post(Uri.parse(_urlEndpoint + url),
    headers:{"content-type":"application/Json;charset=utf-8"},
    body: data

   );
   if (response.statusCode==200 || response.statusCode==201){
     
     print("**********************555555556666**************************");
     debugPrint(response.body.toString());
    // GetIt.l<AppService>().setPlayerId(jsonDecode(response.body)('data')('id').toString());
     //GetIt.l<AppService>().setPlayerName(jsonDecode(response.body)('data')('prenom'));



     switch (T){
       case User:print((json.decode(response.body))); 
       print("0000000000000000000000000000");
       return User.fromJson(json.decode(response.body)) as T;
       default: return User.fromJson(json.decode(response.body.toString())) as T;
     };
   }
   else {
     String message ='';
     if(jsonDecode(response.body)!=null){
       message=jsonDecode(response.body);
      }
      else { 
        message= response.reasonPhrase!;
       }



   };
  }



}