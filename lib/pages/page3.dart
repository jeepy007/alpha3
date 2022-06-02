import 'package:alpha3/composants/homebulles.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



class Page3 extends StatefulWidget {
 Page3({ Key? key }) : super(key: key);


  @override
  State<Page3> createState() => _Page3State();
}



class _Page3State extends State<Page3> {
    final List <String> Listimage =[
    'assets/images/im6.jpeg',
    'assets/images/im2.jpeg',
    'assets/images/im3.jpeg',
    'assets/images/im4.jpeg', 
    'assets/images/im5.jpeg'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider(items: Listimage.map((item) => Container(
                 child: Center(
                   child:Image.asset(item, fit: BoxFit.cover,) 
                   ),
               )).toList(), options: CarouselOptions(autoPlay:true, aspectRatio: 2.0 ,  
               enlargeCenterPage: true)
               ),
              
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(height: 30,),
              homebulle(
                icon_color: Colors.amberAccent,
                titre: 'Bouton',
                description: 'ceci est mon bouton',
                description_color: Colors.purpleAccent,
                button_color: Colors.green, 
                border_color: Colors.black,
                Icon_size: 
                  20,
                radius_t: 10,
                longueur: 150,
                largeur: 180,
                icon: Icons.account_tree,
        
            ),
            SizedBox(height: 30,),
              homebulle(
                icon_color: Colors.amberAccent,
                titre: 'Bouton',
                description: 'ceci est mon bouton',
                description_color: Colors.purpleAccent,
                button_color: Colors.green, 
                border_color: Colors.black,
                Icon_size: 
                  20,
                radius_t: 10,
                longueur: 150,
                largeur: 180,
                icon: Icons.abc_sharp,
        
            ),
              ],
            ),
           Row(mainAxisAlignment: MainAxisAlignment.center,
             children: [
                SizedBox(height: 30,),
              homebulle(
                icon_color: Colors.amberAccent,
                titre: 'Bouton',
                description: 'ceci est mon bouton',
                description_color: Colors.purpleAccent,
                button_color: Colors.green, 
                border_color: Colors.black,
                Icon_size: 
                  20,
                radius_t: 10,
                longueur: 150,
                largeur: 180,
                icon: Icons.account_box,
        
            ),
            SizedBox(height: 30,),
              homebulle(
                icon_color: Colors.amberAccent,
                titre: 'Bouton',
                description: 'ceci est mon bouton',
                description_color: Colors.purpleAccent,
                button_color: Colors.green, 
                border_color: Colors.black,
                Icon_size: 
                  20,
                radius_t: 10,
                longueur: 150,
                largeur: 180,
                icon: Icons.access_time,
        
            ),
             ],
           )
            
            ],
          ),
        ),
      ),
      
    );
  }
}