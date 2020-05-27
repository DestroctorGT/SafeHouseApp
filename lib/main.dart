import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safehouseapp/passwordCardManager.dart';
import 'routesManager.dart';
import 'package:get/get.dart';
import 'passwordMenu.dart';
import 'cardGeneratorMenu.dart';

void main() => runApp(MyApp());

//Referencia a la clase RoutesManager.
RoutesManager routes = RoutesManager();

//Referencia a la clase PasswordCardManager.
PasswordCardManager myPasswordCards = PasswordCardManager();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      home: MyHomePage(),
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
        children: myPasswordCards.returnList(),
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
