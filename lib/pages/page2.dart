import 'dart:async';

import 'package:alpha3/pages/page1.dart';
import 'package:flutter/material.dart';



class page2 extends StatefulWidget {
  const page2({ Key? key }) : super(key: key);

  @override
  State<page2> createState() => _page1State();
}

class _page1State extends State<page2> {
  void initState(){
    //TODO: implement initState
    super.initState();
    Timer(Duration(seconds:4),(){
      Navigator.of(context).pushReplacement
      (MaterialPageRoute(builder:(_)=>
      Page1(),
      ),
      );
    });
  }
  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Page2"),
        centerTitle: true,
      ),
      
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/finance2.jpeg', height: 600,),
            CircularProgressIndicator(
              color: Colors.red,
            )
    
        ]),
      ),
    );
  }
}