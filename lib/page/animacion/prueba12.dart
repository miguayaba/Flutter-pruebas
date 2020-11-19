import 'package:flutter/material.dart';

class PruebaDoce extends StatefulWidget {
  PruebaDoce({Key key}) : super(key: key);

  @override
  _PruebaDoceState createState() => _PruebaDoceState();
}

class _PruebaDoceState extends State<PruebaDoce> with TickerProviderStateMixin {

  AnimationController _controller;
  Animation<double> _animation;
  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this
    )..repeat(reverse: true);
    
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn
    );
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
         title: Text('Scale Transition')
       ),
       body: Center(
         child: ScaleTransition(
           scale: _animation,
           child: Padding(
             padding: EdgeInsets.all(8),
             child: FlutterLogo(size:150)
           ),
         )
       )
    );
  }
}