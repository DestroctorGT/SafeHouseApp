import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'accountImagesManager.dart';
import 'routesManager.dart';

void main() => runApp(MyApp());

RoutesManager routes = RoutesManager();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: routes.routeNameFirst(),
      routes: {
        routes.routeNameFirst(): (context) => MyHomePage(),
        routes.routeNameSecond(): (context) => PasswordMenu(),
        routes.routeNameThird(): (context) => CardGenerator(),
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
          Navigator.pushNamed(context, routes.routeNameSecond());
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
    );
  }
}
