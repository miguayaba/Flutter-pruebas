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
         appBar: AppBar(title: Text('Prueba flutter')),
         body: Center(
           child: Icon(Icons.accessibility, size: 100.0,)
         )
       )
    );
  }
}