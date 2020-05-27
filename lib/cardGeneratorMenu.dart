import 'package:flutter/material.dart';
import 'routesManager.dart';
import 'package:safehouseapp/passwordCardManager.dart';
import 'package:get/get.dart';

//Referencia a la clase RoutesManager.
RoutesManager routes = RoutesManager();

//Referencia a la clase PasswordCardManager.
PasswordCardManager myPasswordCards = PasswordCardManager();

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
              child: TextField(
                controller: textFieldController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  filled: true,
                  labelText: 'User',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  filled: true,
                  labelText: 'Password',
                ),
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
