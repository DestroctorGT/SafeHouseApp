import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safehouseapp/passwordCardManager.dart';
import 'accountImagesManager.dart';
import 'routesManager.dart';
import 'package:get/get.dart';

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

class CardGenerator extends StatefulWidget {
  @override
  _CardGeneratorState createState() => _CardGeneratorState();
}

class _CardGeneratorState extends State<CardGenerator> {
  final textFieldController = TextEditingController();

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SafeHouse')),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              child: new Image.asset(
                Get.arguments,
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: textFieldController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                filled: true,
                labelText: 'User',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              enabled: false,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                filled: true,
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.all(15),
                  onPressed: () {},
                  child: Text('Create Password'),
                ),
                RaisedButton(
                  padding: EdgeInsets.all(15),
                  onPressed: () {
                    myPasswordCards.addCards(
                        image: Get.arguments, user: textFieldController.text);
                    Get.offAllNamed(routes.routeNameFirst());
                  },
                  child: Text('OK'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
