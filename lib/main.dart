import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: MyHomePage.routeName,
      routes: {
        MyHomePage.routeName: (context) => MyHomePage(),
        PasswordMenu.routeName: (context) => PasswordMenu(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  static const routeName = '/myHomePage';

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
          Navigator.pushNamed(context, PasswordMenu.routeName);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class PasswordMenu extends StatelessWidget {
  static const routeName = '/passwordMenu';
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
    FlatButton(
      onPressed: () {},
      child: Center(
        child: Image.asset(
          'images/steam logo.png',
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
