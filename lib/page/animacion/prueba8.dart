import 'package:flutter/material.dart';

class PruebaOcho extends StatefulWidget {
  PruebaOcho({Key key}) : super(key: key);

  @override
  _PruebaOchoState createState() => _PruebaOchoState();
}

class _PruebaOchoState extends State<PruebaOcho> with TickerProviderStateMixin{

  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.red[900],
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(40.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Color(0x66666666),
          blurRadius: 10.0,
          spreadRadius: 3.0,
          offset: Offset(0, 6.0)
        )
      ], 
    ),
    end: BoxDecoration(
      color: Colors.red[400],
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.zero,
    ), 
  );

  AnimationController  _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);
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
         title: Text('DecorateBoxTransition'),
       ),
       body: miWidget(),
    );
  }

  Widget miWidget(){

    return Container(
      color: Colors.white,
      child: Center(
        child: DecoratedBoxTransition(
          position: DecorationPosition.background,
          decoration: decorationTween.animate(_controller),
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 100.0,
              semanticLabel: 'Mi Corazón',
            ),
          ),
        ),
        ),
    );
  }
}