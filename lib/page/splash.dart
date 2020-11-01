import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pruebas_flutter/page/home.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  Timer _timerAnima;
  Timer _timer;
  var _altura;
  bool select = false;

  @override
  void initState() {
    super.initState();
    _altura  = 1000.0;
    _timerAnima = Timer(const Duration(milliseconds: 2000), _cambiar);
    _timer = Timer(const Duration(milliseconds: 2800), _onLogin);
  }

  @override
  void dispose() {
    _timer.cancel();
    _timerAnima.cancel();
    super.dispose();
  }

  void _onLogin(){
    if(mounted){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => HomePage())
      );
    }
  }

  void _cambiar() {
  setState(() {
     select = !select;
  });
}

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       body: AnimatedContainer(
          width: select ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width,
          height: select ? 0.00 : _altura,
          color: select ? Colors.black : Colors.blue,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
         child: Center(
           child: FlutterLogo(size: 100),
         ),
       ),
    );
  }
}