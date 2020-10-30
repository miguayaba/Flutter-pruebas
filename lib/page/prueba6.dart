import 'package:flutter/material.dart';


class PruebaSeis extends StatefulWidget {
  PruebaSeis({Key key}) : super(key: key);

  @override
  _PruebaSeisState createState() => _PruebaSeisState();
}

class _PruebaSeisState extends State<PruebaSeis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Hero'),
       ),
       body: Stack(
         children: [
           Positioned(
             bottom:0.0,
             child: GestureDetector(
               onTap: (){
                 print('Click ahi');
                 Navigator.pushNamed(context, 'prueba6a');
                
                 },
                 child: Container(
                   
                 padding: EdgeInsets.only(bottom:0),
                 child: Hero(
                   tag: 'prueba6a',
                   child: Image.asset('assets/img/5.jpg'),
                 ),
               ),
             )
           )
         ],
        
       ),
    );
  }
}