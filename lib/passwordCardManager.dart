import 'package:flutter/material.dart';

class PasswordCardManager {
  //Lista de Cards encargada de agregar todas las cuentas que cree el usuario.
  List<Card> _passwordCards = [];

  //Metodo encargado de retornar la lista de cards.
  List returnList() => _passwordCards;

  //Metodo encargado para eliminar las Card en la lista.
  void deleteCards() => _passwordCards.removeLast();

  //Metodo encargado de agregar nuevas cards a la lista.
  void addCards({String image, String user}) {
    _passwordCards.add(Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: IconButton(
              padding: EdgeInsets.only(left: 150),
              color: Colors.red,
              onPressed: () {},
              icon: Icon(Icons.delete_outline),
            ),
          ),
          new Image.asset(
            image,
            width: 75,
            height: 75,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Text(
            user,
            textScaleFactor: 1.5,
            textAlign: TextAlign.center,
          )),
          Expanded(
              child: Text(
            'Contraseña',
            textScaleFactor: 1.5,
            textAlign: TextAlign.center,
          )),
        ],
      ),
    ));
  }
}
