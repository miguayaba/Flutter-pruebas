import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<Card> _tarjetas(int count) {

   print(count);
    List<Card> cards = List.generate(     
        count,
        (int index) => Card(
             
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.pushNamed(context, 'prueba1');
                      break;
                    case 1:
                      Navigator.pushNamed(context, 'prueba2');
                      break;
                    case 2:
                      Navigator.pushNamed(context, 'prueba3');
                      break;
                    case 3:
                      Navigator.pushNamed(context, 'prueba4');
                      break;
                    case 4:
                      Navigator.pushNamed(context, 'prueba5');
                      break;
                    default:
                  }      
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 18 / 11,
                      child: Image.asset('assets/img/$index.jpg',
                          fit: BoxFit.fitWidth),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(_nombre(index),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              SizedBox(height: 8.0),
                              Text('Prueba Flutter')
                            ]))
                  ],
                ),
              ),
            ));

    return cards;
  }


  _nombre(valor){
    
  var titulo = "";
  switch(valor) { 
      case 0: {  titulo = "Lista Infinita";  } 
      break; 
     
      case 1: { titulo = "Incrementar"; } 
      break; 
     
      case 2: { titulo = "Stack"; } 
      break; 
     
      case 3: {  titulo = "Animated"; } 
      break; 

      case 4: {  titulo = "CrossFade"; } 
      break;
     
      default: { titulo = "Próximamente"; } 
      break; 
   } 
     return titulo;
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                semanticLabel: 'Menú',
              ),
              onPressed: () {
                print('Presionó Menu');
              }),
          title: Text('Flutter Lab'),
          actions: [
            IconButton(
                icon: Icon(Icons.search, semanticLabel: 'Buscar Ejemplo'),
                onPressed: () {
                  print('Presiono Search');
                }),
            IconButton(
                icon: Icon(Icons.tune, semanticLabel: 'Opciones'),
                onPressed: () {
                  print('Presiono Tune');
                })
          ],
        ),
        body: paginaInicial(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt),
                title: Text('Lista')),
            BottomNavigationBarItem(
                icon: Icon(Icons.plus_one_rounded),
                title: Text('Incrementar')),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_to_photos),
                title: Text('Stack'))
          ],
          onTap: _links,
        ));
  }

  _links(int tabIndex) {
    switch (tabIndex) {
      case 0:
        Navigator.pushNamed(context, 'prueba1');
        break;
      case 1:
        Navigator.pushNamed(context, 'prueba2');
        break;
      case 2:
        Navigator.pushNamed(context, 'prueba3');
        break;
      case 3:
        Navigator.pushNamed(context, 'prueba4');
        break;
      default:
    }
  }

  Widget paginaInicial() {
    return GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: _tarjetas(6));
  }
}
