import 'package:flutter/material.dart';


import 'package:pruebas_flutter/page/home.dart';
import 'package:pruebas_flutter/page/prueba1.dart';
import 'package:pruebas_flutter/page/prueba2.dart';
import 'package:pruebas_flutter/page/prueba3.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
       title: 'App de Pruebas',
       theme: _colorApp(), 
       debugShowCheckedModeBanner :false,           
       home: HomePage(),
       initialRoute: 'home',
       routes: {
         'home' : (BuildContext contex) => HomePage(),
         'prueba1' : (BuildContext contex) => RandomWords(),
         'prueba2' : (BuildContext contex) => PruebaDos(),
         'prueba3' : (BuildContext contex) => PruebaTres()
       },
    );
  }
}

 _colorApp(){
  return ThemeData(
    primaryColor: Colors.black
  );
}



