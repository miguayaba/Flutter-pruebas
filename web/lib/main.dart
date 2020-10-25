import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: MyHomePage(title: 'Flutter Web'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Card> _tarjetas(int count) {
    List<Card> cards = List.generate(
        count,
        (int index) => Card(
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  print('Le di click a una tarjeta');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 18 / 11,
                      child: Image.asset('assets/img/banner.jpg',
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
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          textTheme: TextTheme(title: TextStyle(color: Colors.black)),
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text('Mi Web Flutter'),
          leading: IconButton(
              onPressed: () {
                print('Le di click al menu');
              },
              icon: Icon(Icons.menu))),
      body: contenedorPrin2(),
    );
  }

  Widget contenedorPrin2() {
    return  SingleChildScrollView(
          child: Container(
          height: 2000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Image.asset('assets/img/banner.jpg'),
              ),
              Expanded(
                 child: Container(
                  padding: EdgeInsets.all(100), child: tarjetasPrincipal()),
              ),
            ],
          ),
        
      ),
    );
  }

  Widget contenedorPrin() {
    return SingleChildScrollView(
      child: Container(
        height: 5000,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Image.asset('assets/img/banner.jpg'),
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.all(100), child: tarjetasPrincipal()),
              )
            ]),
      ),
    );
  }

  Widget tarjetasPrincipal() {
    return GridView.count(
        crossAxisCount: 4,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: _tarjetas(12));
  }
}
