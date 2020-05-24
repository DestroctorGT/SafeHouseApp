import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'accountImagesManager.dart';
import 'routesManager.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

RoutesManager routes = RoutesManager();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      initialRoute: routes.routeNameFirst(),
      namedRoutes: {
        routes.routeNameFirst(): GetRoute(page: MyHomePage()),
        routes.routeNameSecond(): GetRoute(page: PasswordMenu()),
        routes.routeNameThird(): GetRoute(page: CardGenerator()),
      },
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
  List<Card> passwordCards = [
    Card(
      child: Center(
        child: Text('Prueba'),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SafeHouse')),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(12),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: passwordCards,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(routes.routeNameSecond());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class PasswordMenu extends StatelessWidget {
  AccountImagesManager iManager = AccountImagesManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SafeHouse')),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(12),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: iManager.imagesReturn(),
      ),
    );
  }
}

class CardGenerator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SafeHouse')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            child: new Image.asset(
              Get.arguments,
              width: 200,
              height: 200,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(16),
              labelText: 'User',
            ),
          )
        ],
      ),
    );
  }
}
