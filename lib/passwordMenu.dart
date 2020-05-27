import 'package:flutter/material.dart';
import 'accountImagesManager.dart';

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
