import 'package:flutter/material.dart';
import 'routesManager.dart';
import 'package:get/get.dart';

class PasswordCardManager {
  List<Card> _passwordCards = [
    Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          new Image.asset(
            'images/twitter logo.png',
            width: 90,
            height: 90,
          ),
          SizedBox(
            height: 10,
          ),
          Text('Usuario'),
          SizedBox(
            height: 10,
          ),
          Text('Contraseña'),
        ],
      ),
    )
  ];

  List returnList() => _passwordCards;

  void addCards({String image, String user}) {
    _passwordCards.add(Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          new Image.asset(
            image,
            width: 90,
            height: 90,
          ),
          SizedBox(
            height: 10,
          ),
          Text(user),
          SizedBox(
            height: 10,
          ),
          Text('Contraseña'),
        ],
      ),
    ));
  }
}
