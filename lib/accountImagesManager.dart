import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'routesManager.dart';

RoutesManager routes = RoutesManager();

class AccountImagesManager {
  List<FlatButton> _accountImages = [
    FlatButton(
      onPressed: () {},
      child: Center(
        child: new Image.asset(
          'images/twitter logo.png',
          width: 120,
          height: 120,
        ),
      ),
    ),
    FlatButton(
      onPressed: () {},
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
