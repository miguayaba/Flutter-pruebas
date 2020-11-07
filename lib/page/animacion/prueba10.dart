import 'package:flutter/material.dart';

class PruebaDiez extends StatefulWidget {
  PruebaDiez({Key key}) : super(key: key);

  @override
  _PruebaDiezState createState() => _PruebaDiezState();
}

class _PruebaDiezState extends State<PruebaDiez> with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this
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
    final double smallLogo = 100;
    final double bigLogo = 300;


    return Scaffold(
       appBar: AppBar(
         title: Text('Positioned Transition'),
       ),
       body: LayoutBuilder(
         builder: (context, constraints) {
           final Size biggest = constraints.biggest;
           return Stack(
             children: [
               PositionedTransition(
                 rect: RelativeRectTween(
                   begin: RelativeRect.fromSize(Rect.fromLTWH(0, 0, smallLogo, smallLogo), biggest),
                   end: RelativeRect.fromSize(Rect.fromLTWH(biggest.width - bigLogo, biggest.height - bigLogo, bigLogo, bigLogo), biggest),
                 ).animate(CurvedAnimation(
                   parent:_controller,
                   curve: Curves.elasticInOut
                 )),
                 child: Padding(
                   padding: const EdgeInsets.all(8),
                   child: FlutterLogo(),
                 ),
               ),
             ],
           );
         },
       ),
    );
  }
}