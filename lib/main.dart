import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => PasswordMenu()
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
          Navigator.pushNamed(context, '/second');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class PasswordMenu extends StatelessWidget {
  List<FlatButton> accountImages = [
    FlatButton(
      onPressed: () {},
      child: Center(
        child: Image.asset(
          'images/twitter logo.png',
          width: 120,
          height: 120,
        ),
      ),
    ),
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
        children: accountImages,
      ),
    );
  }
}
