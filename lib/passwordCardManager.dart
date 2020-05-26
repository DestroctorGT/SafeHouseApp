import 'package:flutter/material.dart';

class PasswordCardManager {
  //Lista de Cards encargada de agregar todas las cuentas que cree el usuario.
  List<Card> _passwordCards = [];

  //Metodo encargado de retornar la lista de cards.
  List returnList() => _passwordCards;

  //Metodo encargado de agregar nuevas cards a la lista.
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
