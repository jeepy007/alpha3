import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({ Key? key }) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
   
   final TextEditingController _Nom1Controler = TextEditingController();
   final TextEditingController _Nom2Controler = TextEditingController();
 
 

  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              
              child: Image.asset('assets/images/finance2.jpeg',)
              ),
               
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _Nom1Controler,
                      decoration: InputDecoration(
                        labelText: 'Nom',
                        border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _Nom2Controler,
                      decoration: InputDecoration(
                        labelText: 'Prenoms',
                        border: OutlineInputBorder()
                      ),
                      
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(onPressed: (() {


                      
                    }), 
                    child:Text("Valider"),
                    ),
          ],
        )
         ),
      
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
