import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'routesManager.dart';
import 'package:get/get.dart';

//Referencia a la clase RoutesManager.
RoutesManager routes = RoutesManager();

class AccountImagesManager {
  //Lista de FlatButton encargado de almacenar todas las imagenes de las cuentas disponibles en la app.
  List<FlatButton> _accountImages = [
    FlatButton(
      onPressed: () {
        Get.toNamed(routes.routeNameThird(), arguments: _accountImagesNames[0]);
      },
      child: Center(
        child: new Image.asset(
          _accountImagesNames[0],
          width: 120,
          height: 120,
        ),
      ),
    ),
    FlatButton(
      onPressed: () {
        Get.toNamed(routes.routeNameThird(), arguments: _accountImagesNames[1]);
      },
      child: Center(
        child: new Image.asset(
          _accountImagesNames[1],
          width: 120,
          height: 120,
        ),
      ),
    ),
    FlatButton(
      onPressed: () {
        Get.toNamed(routes.routeNameThird(), arguments: _accountImagesNames[2]);
      },
      child: Center(
        child: new Image.asset(
          _accountImagesNames[2],
          width: 120,
          height: 120,
        ),
      ),
    ),
    FlatButton(
      onPressed: () {
        Get.toNamed(routes.routeNameThird(), arguments: _accountImagesNames[3]);
      },
      child: Center(
        child: new Image.asset(
          _accountImagesNames[3],
          width: 120,
          height: 120,
        ),
      ),
    ),
    FlatButton(
      onPressed: () {
        Get.toNamed(routes.routeNameThird(), arguments: _accountImagesNames[4]);
      },
      child: Center(
        child: new Image.asset(
          _accountImagesNames[4],
          width: 120,
          height: 120,
        ),
      ),
    ),
    FlatButton(
      onPressed: () {
        Get.toNamed(routes.routeNameThird(), arguments: _accountImagesNames[5]);
      },
      child: Center(
        child: new Image.asset(
          _accountImagesNames[5],
          width: 120,
          height: 120,
        ),
      ),
    )
  ];

  //Metodo encargado de retornar todas las imagenes almacenadas en la lista.
  List<FlatButton> imagesReturn() {
    return _accountImages;
  }
}

//Lista de String que almacena el nombre de la ruta donde se encuentra las imagenes.
List<String> _accountImagesNames = [
  'images/twitter logo.png',
  'images/steam logo.png',
  'images/Gmail.png',
  'images/instagram logo.png',
  'images/itch.io.png',
  'images/outlook logo.png'
];
