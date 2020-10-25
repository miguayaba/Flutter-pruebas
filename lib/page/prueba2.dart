import 'package:flutter/material.dart';


class PruebaDos extends StatefulWidget {
  PruebaDos({Key key}) : super(key: key);

  @override
  _PruebaDosState createState() => _PruebaDosState();
}

class _PruebaDosState extends State<PruebaDos> {

  int _contador = 0;

  _incrementar(){
    setState(() {
      print('Entro al State y sumo 1 a $_contador');
      _contador++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title: Text('Función Incrementar')),
         body: Container(
                     
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Center(
                 child: Text(
                   'Esta función se utiliza para incrementar el valor de un contador partiendo del uso del State de la aplicacion', 
                   textAlign: TextAlign.center,
                   )
               ),
               SizedBox(height: 40),
               RaisedButton(
                 onPressed: _incrementar,
                 color: Colors.black,
                 textColor: Colors.white,
                 child: Text('Aumentar'),
               ),
               SizedBox(height: 20),
               Text('Contador: $_contador')
             ]
           )
         )
       )
    );
  }
}