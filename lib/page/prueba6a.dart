import 'package:flutter/material.dart';

class PruebaSeisa extends StatefulWidget {
  PruebaSeisa({Key key}) : super(key: key);

  @override
  _PruebaSeisaState createState() => _PruebaSeisaState();
}

class _PruebaSeisaState extends State<PruebaSeisa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Hero'),
       ),
       body: Stack(
         children: [
           Positioned(
             top:20.0,
             left: 20.0,
             child: GestureDetector(
               onTap: (){
                 print('Click ahi');
               },
                 child: Hero(
                    tag: 'prueba6a',
                    child: Container(
                     width: 110,
                     height: 110,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.black,
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image: AssetImage('assets/img/5.jpg')
                       )
                      
                     ),
                
               ),
                 ),
             )
           )
         ],
        
       ),
    );
  }
}