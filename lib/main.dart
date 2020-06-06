import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safehouseapp/passwordCardDeleteManager.dart';
import 'package:safehouseapp/passwordGenerator.dart';
import 'passwordCardManager.dart';
import 'routesManager.dart';
import 'package:get/get.dart';
import 'passwordMenu.dart';
import 'passwordCardDeleteManager.dart';

void main() => runApp(MyApp());

//Referencia a la clase RoutesManager.
RoutesManager routes = RoutesManager();

//Referencia a la clase PasswordCardManager.
PasswordCardManager myPasswordCards = PasswordCardManager();

//Referencia a la clase PasswordGenerator.
PasswordGenerator passwords = PasswordGenerator();

//Variable que sigue el conteo de la lista de Cards.
int indexP = 1;

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
        routes.routeNameFourth(): GetRoute(page: PasswordCardDeleteManager())
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
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          Get.toNamed(routes.routeNameSecond());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CardGenerator extends StatefulWidget {
  @override
  _CardGeneratorState createState() => _CardGeneratorState();
}

class _CardGeneratorState extends State<CardGenerator> {
  final _formKey = GlobalKey<FormState>();
  final textPasswordController = TextEditingController();
  final textUserController = TextEditingController();

  @override
  void dispose() {
    textPasswordController.dispose();
    textUserController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SafeHouse')),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Flexible(
              child: Container(
                child: new Image.asset(
                  Get.arguments,
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  controller: textUserController,
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter your username';
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    filled: true,
                    labelText: 'User',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  readOnly: true,
                  controller: textPasswordController,
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'No password';
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    filled: true,
                    labelText: 'Password',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    padding: EdgeInsets.all(15),
                    onPressed: () {
                      passwords.createNormalPassword();
                      textPasswordController.text =
                          passwords.createNormalPassword();
                    },
                    child: Text('Create Password'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    padding: EdgeInsets.all(15),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        myPasswordCards.addCards(
                            image: Get.arguments,
                            user: textUserController.text,
                            password: textPasswordController.text,
                            index: indexP++);
                        Get.offAllNamed(routes.routeNameFirst());
                      }
                    },
                    child: Text('OK'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
