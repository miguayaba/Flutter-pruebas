import 'package:flutter/material.dart';


import 'package:pruebas_flutter/page/home.dart';
import 'package:pruebas_flutter/page/prueba1.dart';
import 'package:pruebas_flutter/page/prueba2.dart';
import 'package:pruebas_flutter/page/prueba3.dart';
import 'package:pruebas_flutter/page/prueba4.dart';
import 'package:pruebas_flutter/page/prueba5.dart';
import 'package:pruebas_flutter/page/prueba6.dart';
import 'package:pruebas_flutter/page/prueba6a.dart';
import 'package:pruebas_flutter/page/prueba7.dart';


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
         'prueba3' : (BuildContext contex) => PruebaTres(),
         'prueba4' : (BuildContext contex) => PruebaCuatro(),
         'prueba5' : (BuildContext contex) => PruebaCinco(),
         'prueba6' : (BuildContext contex) => PruebaSeis(),
         'prueba6a' : (BuildContext contex) => PruebaSeisa(),
         'prueba7' : (BuildContext contex) => PruebaSiete(),

       },
    );
  }
}

 _colorApp(){
  return ThemeData(
    primaryColor: Colors.black
  );
}



