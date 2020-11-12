import 'package:flutter/material.dart';

class PruebaOnce extends StatefulWidget {
  PruebaOnce({Key key}) : super(key: key);

  @override
  _PruebaOnceState createState() => _PruebaOnceState();
}

class _PruebaOnceState extends State<PruebaOnce> with TickerProviderStateMixin  {

  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this
    )..repeat(reverse:true);

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut
    );
  
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
         title: Text('RotationTransition'),
       ),
       body: Center(
         child: RotationTransition(
           turns: _animation,
           child: Padding(
             padding: EdgeInsets.all(8),
             child: FlutterLogo(size: 150),
           ),
         )
       ),
    );
  }
}