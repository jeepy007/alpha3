import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({ Key? key }) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
                      decoration: InputDecoration(
                        labelText: 'Nom',
                        border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
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