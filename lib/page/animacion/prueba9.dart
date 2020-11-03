import 'package:flutter/material.dart';

class PruebaNueve extends StatefulWidget {
  PruebaNueve({Key key}) : super(key: key);

  @override
  _PruebaNueveState createState() => _PruebaNueveState();
}

class _PruebaNueveState extends State<PruebaNueve> with TickerProviderStateMixin {



  AnimationController  _controller;
  Animation _animation;
    
  @override
  void initState() {

  _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3)
  );

  _animation = Tween(
    begin: 0.0,
    end: 1.0
  ).animate(_controller);
  
    super.initState();
  }

  
  @override
  void dispose() { 
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeTransition')
      ),
       body: miAnimacion(),
    );
  }

  Widget miAnimacion(){
    _controller.forward();
    return FadeTransition(
      opacity: _animation,
      child: Center(
        child: FlutterLogo(
          style: FlutterLogoStyle.horizontal,
          size: 300.0,
          )
        
        ),
    );
  }

}