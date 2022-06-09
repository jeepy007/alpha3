import 'package:alpha3/modeles/User.dart';
import 'package:alpha3/modeles/utiles/block.dart';
import 'package:alpha3/pages/page2.dart';
import 'package:alpha3/pages/page3.dart';
import 'package:flutter/material.dart';


class Page1 extends StatefulWidget {
  const Page1({ Key? key }) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
   
   final TextEditingController _Nom1Controler = TextEditingController();
   final TextEditingController _Nom2Controler = TextEditingController();

   final formkey= GlobalKey<FormState>();
   bool showpass = false;
   ConnexionBloc? _bloc;

   @override
   void initState() { 
     super.initState();

     _bloc = new ConnexionBloc();
   }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              
              child: Image.asset('assets/images/finance2.jpeg',fit: BoxFit.cover,)
              ),
               
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _Nom1Controler,
                      decoration: InputDecoration(
                        labelText: 'Nom',
                        border: OutlineInputBorder()
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (value){
                        if (formkey.currentState!.validate()) {
                          loginF();
                         }
                       },
                
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _Nom2Controler,
                      decoration: InputDecoration(
                        labelText: 'password',
                        border: OutlineInputBorder()
                      ),
                       keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (value){
                        if (formkey.currentState!.validate()) {
                          loginF();
                         }
                       },
                      
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(onPressed: () async {

                    print(" -----------------_______-----------");
                    if (_Nom1Controler.text != "" && _Nom2Controler.text !="" ) {
                      print("PPPPPPPPPPPP");
                      
                      User user = User(username: _Nom1Controler.text, password: _Nom2Controler.text);

                      var success = await _bloc!.logUser(user, success: false);
                      if (success) {
                       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Page3(),),);
                      }
                      
                    }
                      
                    }, 
                    child:Text("Valider"),
                    ),
          ],
        )
         ),
      
    );
  }

  void loginF() {
    print("*************************************************************");
    User user = User(username: _Nom1Controler.text,
    password: _Nom2Controler.text
    );
    if (_bloc!.logUser(user)==true){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>page2(),),);
      }
  }
}

  
