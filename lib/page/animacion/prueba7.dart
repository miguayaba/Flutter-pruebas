import 'package:flutter/material.dart';
import 'dart:math' as math;

class PruebaSiete extends StatefulWidget {
  PruebaSiete({Key key}) : super(key: key);

  @override
  _PruebaSieteState createState() => _PruebaSieteState();
}

class _PruebaSieteState extends State<PruebaSiete>  with TickerProviderStateMixin {
  
  AnimationController _controller;

  @override
  void initState() { 
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
  }

  @override
  void dispose() { 
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Animated Builder')),
       body: AnimatedBuilder(
         animation: _controller,
         child: Center(
           child: Container(
             width: 200,
             height: 200,
             color: Colors.teal[100],
             child: FlutterLogo()
           ),
         ),
         builder: (BuildContext context, Widget child){
           return Transform.rotate(
             angle: _controller.value * 9.0 * math.pi,
             child: child,
           );
         },
         )
    );
  }
}