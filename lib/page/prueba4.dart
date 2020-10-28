import 'package:flutter/material.dart';

class PruebaCuatro extends StatefulWidget {
  PruebaCuatro({Key key}) : super(key: key);

  @override
  _PruebaCuatroState createState() => _PruebaCuatroState();
}

class _PruebaCuatroState extends State<PruebaCuatro> {



  bool select = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animación Container')
        ),
      body: GestureDetector(
      onTap: () {
       _cambiar();
    },
    child:_animacionCon(context, select)
    )
    );
  }


Widget _animacionCon(BuildContext context, select){

  return  Column(
    children: [
      AnimatedContainer(
          width: select ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width,
          height: select ? 100.00 : 400.00,
          color: select ? Colors.red : Colors.blue,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 75),
      ),
      SizedBox(height:40),
      Text('Este es un Width para darle animación a los container...'),
      RaisedButton(
        onPressed: (){
           _cambiar();
        },
        child: Text('Cambiar Tamaño'),
        textColor: Colors.black
      )
    ],
  );
}

 void _cambiar() {
  setState(() {
     select = !select;
  });
}

}