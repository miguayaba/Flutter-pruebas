import 'package:flutter/material.dart';


class PruebaTres extends StatefulWidget {
  PruebaTres({Key key}) : super(key: key);

  @override
  _PruebaTresState createState() => _PruebaTresState();
}

class _PruebaTresState extends State<PruebaTres> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title: Text('Stack')),
         body: myStack()
       )
    );
  }
}

Widget myStack(){

  return Stack(
    children: <Widget>[
      Positioned(
        left: 10,
        top:10,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.blue,
          ),
          width: 200,
          height: 200,
          // color: Colors.blue
        ),
      ),
      Container(
        child: Text(
          'Prueba de Stack', 
          style: TextStyle(
            color: Colors.white, 
            fontSize: 20
          )
        ),
        padding: EdgeInsets.all(25.0),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.black.withAlpha(0),
              Colors.black12,
              Colors.black54
            ]
          ),

        ),
      )
    ],
  );
}