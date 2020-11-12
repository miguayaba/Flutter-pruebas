import 'package:flutter/material.dart';
//Paginas del APP
import 'package:pruebas_flutter/page/splash.dart';
import 'package:pruebas_flutter/page/home.dart';
import 'package:pruebas_flutter/page/layout/prueba1.dart';
import 'package:pruebas_flutter/page/varios/prueba2.dart';
import 'package:pruebas_flutter/page/layout/prueba3.dart';
import 'package:pruebas_flutter/page/animacion/prueba4.dart';
import 'package:pruebas_flutter/page/animacion/prueba5.dart';
import 'package:pruebas_flutter/page/animacion/prueba6.dart';
import 'package:pruebas_flutter/page/animacion/prueba6a.dart';
import 'package:pruebas_flutter/page/animacion/prueba7.dart';
import 'package:pruebas_flutter/page/animacion/prueba8.dart';
import 'package:pruebas_flutter/page/animacion/prueba9.dart';
import 'package:pruebas_flutter/page/animacion/prueba10.dart';
import 'package:pruebas_flutter/page/animacion/prueba11.dart';


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
       initialRoute: 'splash',
       routes: {
         'splash' : (BuildContext contex) => SplashScreen(),
         'home' : (BuildContext contex) => HomePage(),
         'prueba1' : (BuildContext contex) => RandomWords(),
         'prueba2' : (BuildContext contex) => PruebaDos(),
         'prueba3' : (BuildContext contex) => PruebaTres(),
         'prueba4' : (BuildContext contex) => PruebaCuatro(),
         'prueba5' : (BuildContext contex) => PruebaCinco(),
         'prueba6' : (BuildContext contex) => PruebaSeis(),
         'prueba6a' : (BuildContext contex) => PruebaSeisa(),
         'prueba7' : (BuildContext contex) => PruebaSiete(),
         'prueba8' : (BuildContext contex) => PruebaOcho(),
         'prueba9' : (BuildContext contex) => PruebaNueve(),
         'prueba10' : (BuildContext contex) => PruebaDiez(),
         'prueba11' : (BuildContext contex) => PruebaOnce(),

       },
    );
  }
}

 _colorApp(){
  return ThemeData(
    primaryColor: Colors.black
  );
}



