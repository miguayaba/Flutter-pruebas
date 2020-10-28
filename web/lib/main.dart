import 'package:flutter/material.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';

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
  ScrollController _controller;
  double _offset = 0;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
      _controller.position.moveTo(dragUpdate.globalPosition.dy * 3.5);
    });
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
      body: pruebaTres(),
    );
  }

  Widget contenedorPrin2() {
    final contenid =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ornare pharetra nunc sed mollis. Integer vitae elit id diam sagittis dignissim. Ut bibendum eleifend purus tincidunt lobortis. Cras augue lacus, accumsan cursus lectus ac, porttitor accumsan elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas pulvinar nulla orci, sed malesuada elit suscipit eget. Vestibulum efficitur dolor sapien, vel vehicula risus malesuada et. Aenean dictum in odio non ornare. Nunc dolor leo, consectetur eu blandit in, eleifend vel diam. Curabitur placerat lorem id massa congue, nec consequat est porta. Integer fringilla dui vitae arcu maximus, et mollis felis interdum. Etiam non ex et nisi auctor posuere. Etiam porta enim ut libero mollis, eu lacinia tortor faucibus. Proin egestas, massa at rutrum porttitor, lacus tellus hendrerit massa, eget hendrerit turpis nunc quis enim. Morbi finibus tristique dolor nec aliquam. Sed dapibus mi massa, quis euismod dui interdum a. Sed congue ante eget arcu euismod, consectetur suscipit dolor aliquet. In bibendum, massa dignissim lobortis accumsan, est justo scelerisque risus, pretium vestibulum quam ligula a nunc. Donec id nulla urna.  Curabitur ac pretium ligula. Vestibulum semper imperdiet nisi. Proin porttitor, mi ac fermentum sollicitudin, augue metus viverra neque, nec hendrerit ex elit sit amet arcu. Cras posuere a dui nec tempor. Duis blandit lectus lacus, eget tempus lacus euismod a. Sed dictum libero quam, sed mollis urna venenatis nec. Vivamus at erat sed erat pellentesque tristique. Aenean accumsan diam quis risus cursus, nec consequat quam dapibus. Donec feugiat neque rutrum odio molestie ornare. Praesent ullamcorper eleifend urna ut euismod. In facilisis odio lacus, vel laoreet felis varius nec. Fusce vulputate condimentum scelerisque. Nullam eu quam et nunc tincidunt porttitor quis vel leo. Vivamus volutpat quis nisl vitae convallis. Sed at tincidunt est. Curabitur nunc neque, commodo vitae dictum id, vehicula mollis dolor. Duis lectus neque, elementum ut arcu at, rhoncus viverra massa. Quisque feugiat diam lectus. Aenean tristique lobortis congue. Mauris facilisis arcu in venenatis suscipit. Suspendisse potenti. Vivamus purus ligula, scelerisque in posuere porta, aliquam vitae mi. Aliquam eget lacus nec lorem mollis blandit eget eu quam. Curabitur at tristique justo, eu tristique quam.";

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            child: SingleChildScrollView(
              controller: _controller,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: tarjetasPrincipal(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
          //Scroll bar
          Container(
              alignment: Alignment.centerRight,
              height: MediaQuery.of(context).size.height,
              width: 20.0,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width - 20.0),
              decoration: BoxDecoration(color: Colors.black12),
              child: Container(
                alignment: Alignment.topCenter,
                child: GestureDetector(
                  child: Container(
                    height: 40.0,
                    width: 15.0,
                    margin:
                        EdgeInsets.only(left: 5.0, right: 5.0, top: _offset),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                  ),
                  onVerticalDragUpdate: (dragUpdate) {
                    _controller.position
                        .moveTo(dragUpdate.globalPosition.dy * 3.5);

                    setState(() {
                      if (dragUpdate.globalPosition.dy >= 0) {
                        _offset = dragUpdate.globalPosition.dy;
                      }
                      print(
                          "View offset ${_controller.offset} scroll-bar offset ${_offset}");
                    });
                  },
                ),
              )),
        ],
      ),
    );
  }

  Widget pruebaTres() {
    final contenid =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ornare pharetra nunc sed mollis. Integer vitae elit id diam sagittis dignissim. Ut bibendum eleifend purus tincidunt lobortis. Cras augue lacus, accumsan cursus lectus ac, porttitor accumsan elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas pulvinar nulla orci, sed malesuada elit suscipit eget. Vestibulum efficitur dolor sapien, vel vehicula risus malesuada et. Aenean dictum in odio non ornare. Nunc dolor leo, consectetur eu blandit in, eleifend vel diam. Curabitur placerat lorem id massa congue, nec consequat est porta. Integer fringilla dui vitae arcu maximus, et mollis felis interdum. Etiam non ex et nisi auctor posuere. Etiam porta enim ut libero mollis, eu lacinia tortor faucibus. Proin egestas, massa at rutrum porttitor, lacus tellus hendrerit massa, eget hendrerit turpis nunc quis enim. Morbi finibus tristique dolor nec aliquam. Sed dapibus mi massa, quis euismod dui interdum a. Sed congue ante eget arcu euismod, consectetur suscipit dolor aliquet. In bibendum, massa dignissim lobortis accumsan, est justo scelerisque risus, pretium vestibulum quam ligula a nunc. Donec id nulla urna.  Curabitur ac pretium ligula. Vestibulum semper imperdiet nisi. Proin porttitor, mi ac fermentum sollicitudin, augue metus viverra neque, nec hendrerit ex elit sit amet arcu. Cras posuere a dui nec tempor. Duis blandit lectus lacus, eget tempus lacus euismod a. Sed dictum libero quam, sed mollis urna venenatis nec. Vivamus at erat sed erat pellentesque tristique. Aenean accumsan diam quis risus cursus, nec consequat quam dapibus. Donec feugiat neque rutrum odio molestie ornare. Praesent ullamcorper eleifend urna ut euismod. In facilisis odio lacus, vel laoreet felis varius nec. Fusce vulputate condimentum scelerisque. Nullam eu quam et nunc tincidunt porttitor quis vel leo. Vivamus volutpat quis nisl vitae convallis. Sed at tincidunt est. Curabitur nunc neque, commodo vitae dictum id, vehicula mollis dolor. Duis lectus neque, elementum ut arcu at, rhoncus viverra massa. Quisque feugiat diam lectus. Aenean tristique lobortis congue. Mauris facilisis arcu in venenatis suscipit. Suspendisse potenti. Vivamus purus ligula, scelerisque in posuere porta, aliquam vitae mi. Aliquam eget lacus nec lorem mollis blandit eget eu quam. Curabitur at tristique justo, eu tristique quam.";

    return Stack(children: [
      Container(
        child: CustomScrollView(
          controller: _controller,
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    child: Image.asset('assets/img/banner.jpg'),
                  ),
                  // Text("Header 2"),
                  // Text("Header 3"),
                  // Text("Header 4"),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              delegate: SliverChildListDelegate(
                [
                  Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 80, right: 20, left: 80),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Titulo de recuadro',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Text(contenid),
                          ])),
                  Container(
                      padding: EdgeInsets.only(top: 80, left: 20, right: 80),
                      child: Text(contenid)),
                ],
              ),
            ),
          ],
        ),
      ),
      FlutterWebScroller(
        //Pass a reference to the ScrollCallBack function into the scrollbar
        scrollCallBack,

        //Add optional values
        scrollBarBackgroundColor: Colors.white,
        scrollBarWidth: 15.0,
        dragHandleColor: Colors.black,
        dragHandleBorderRadius: 2.0,
        dragHandleHeight: 40.0,
        dragHandleWidth: 15.0,
      ),
    ]);
  }

  Widget pruebaDos() {
    final List<String> elements = [
      "Zero",
      "One",
      "Two",
      "Three",
      "Four",
      "Five",
      "Six",
      "Seven",
      "Eight",
      "A Million Billion Trillion",
      "A much, much longer text that will still fit"
    ];

    return GridView.extent(
        maxCrossAxisExtent: 130.0,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        children: elements
            .map((el) => Card(
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.all(8.0), child: Text(el)))))
            .toList());
  }

  Widget contenedorPrin() {
    return SingleChildScrollView(
      child: Container(
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
    final contenid =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ornare pharetra nunc sed mollis. Integer vitae elit id diam sagittis dignissim. Ut bibendum eleifend purus tincidunt lobortis. Cras augue lacus, accumsan cursus lectus ac, porttitor accumsan elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas pulvinar nulla orci, sed malesuada elit suscipit eget. Vestibulum efficitur dolor sapien, vel vehicula risus malesuada et. Aenean dictum in odio non ornare. Nunc dolor leo, consectetur eu blandit in, eleifend vel diam. Curabitur placerat lorem id massa congue, nec consequat est porta. Integer fringilla dui vitae arcu maximus, et mollis felis interdum. Etiam non ex et nisi auctor posuere. Etiam porta enim ut libero mollis, eu lacinia tortor faucibus. Proin egestas, massa at rutrum porttitor, lacus tellus hendrerit massa, eget hendrerit turpis nunc quis enim. Morbi finibus tristique dolor nec aliquam. Sed dapibus mi massa, quis euismod dui interdum a. Sed congue ante eget arcu euismod, consectetur suscipit dolor aliquet. In bibendum, massa dignissim lobortis accumsan, est justo scelerisque risus, pretium vestibulum quam ligula a nunc. Donec id nulla urna.  Curabitur ac pretium ligula. Vestibulum semper imperdiet nisi. Proin porttitor, mi ac fermentum sollicitudin, augue metus viverra neque, nec hendrerit ex elit sit amet arcu. Cras posuere a dui nec tempor. Duis blandit lectus lacus, eget tempus lacus euismod a. Sed dictum libero quam, sed mollis urna venenatis nec. Vivamus at erat sed erat pellentesque tristique. Aenean accumsan diam quis risus cursus, nec consequat quam dapibus. Donec feugiat neque rutrum odio molestie ornare. Praesent ullamcorper eleifend urna ut euismod. In facilisis odio lacus, vel laoreet felis varius nec. Fusce vulputate condimentum scelerisque. Nullam eu quam et nunc tincidunt porttitor quis vel leo. Vivamus volutpat quis nisl vitae convallis. Sed at tincidunt est. Curabitur nunc neque, commodo vitae dictum id, vehicula mollis dolor. Duis lectus neque, elementum ut arcu at, rhoncus viverra massa. Quisque feugiat diam lectus. Aenean tristique lobortis congue. Mauris facilisis arcu in venenatis suscipit. Suspendisse potenti. Vivamus purus ligula, scelerisque in posuere porta, aliquam vitae mi. Aliquam eget lacus nec lorem mollis blandit eget eu quam. Curabitur at tristique justo, eu tristique quam.";

    return Row(children: [
      Text(contenid),
      Text(contenid),
    ]);
  }
}
