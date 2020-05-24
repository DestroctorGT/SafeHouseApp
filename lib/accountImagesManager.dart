import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'routesManager.dart';
import 'package:get/get.dart';

RoutesManager routes = RoutesManager();

class AccountImagesManager {
  List<FlatButton> _accountImages = [
    FlatButton(
      onPressed: () {
        Get.toNamed(routes.routeNameThird(), arguments: _accountImagesNames[0]);
      },
      child: Center(
        child: new Image.asset(
          'images/twitter logo.png',
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
          'images/steam logo.png',
          width: 120,
          height: 120,
        ),
      ),
    ),
  ];

  List<FlatButton> imagesReturn() {
    return _accountImages;
  }
}

List<String> _accountImagesNames = [
  'images/twitter logo.png',
  'images/steam logo.png'
];
