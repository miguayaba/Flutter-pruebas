import 'package:flutter/material.dart';

class PruebaCinco extends StatefulWidget {
  PruebaCinco({Key key}) : super(key: key);

  @override
  _PruebaCincoState createState() => _PruebaCincoState();
}

class _PruebaCincoState extends State<PruebaCinco> {


 bool _first  = false;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('CrossFade')
         ),
         body:  _miCross()
       ),
    );
  }

 Widget _miCross(){
   
   return GestureDetector(
     onTap: (){
       print('Le di click');
       print(_first);
       
       setState(() {
         _first = !_first;
       });
        
     _cambiar(_first);
      print(_first);
      
        
       
     },
        child: _cambiar(_first),
   );
 }

 _cambiar(valor){
   print('El valor es $valor');
  
   return Center(
     child: AnimatedCrossFade(
         duration: const Duration(seconds: 2),
         firstChild: const FlutterLogo(
           style: FlutterLogoStyle.horizontal, size: 300
         ),
         secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size:300),
         crossFadeState: valor ? CrossFadeState.showFirst : CrossFadeState.showSecond
       ),
   ); 
    
}

}