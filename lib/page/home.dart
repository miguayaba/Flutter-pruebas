import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  
  List<Card> _tarjetas(int count) {
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
                              Text('Prueba $index',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              SizedBox(height: 8.0),
                              Text('Desarrollo en Flutter')
                            ]))
                  ],
                ),
              ),
            ));

    return cards;
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
                icon: Icon(Icons.account_balance_wallet),
                title: Text('Prueba 1')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet),
                title: Text('Prueba 2')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet),
                title: Text('Prueba 3'))
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
