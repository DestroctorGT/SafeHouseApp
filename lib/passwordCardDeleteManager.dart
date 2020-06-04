import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Esta route sera agregada despues.
//No estara agregada en la primera version.
class PasswordCardDeleteManager extends StatefulWidget {
  @override
  _PasswordCardDeleteManagerState createState() =>
      _PasswordCardDeleteManagerState();
}

class _PasswordCardDeleteManagerState extends State<PasswordCardDeleteManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Safehouse'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                initialValue: Get.arguments.toString(),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: RaisedButton(
                  color: Colors.blueAccent,
                  padding: EdgeInsets.all(15),
                  onPressed: () {},
                  child: Text('Create Password'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: RaisedButton(
                  color: Colors.blueAccent,
                  padding: EdgeInsets.all(15),
                  onPressed: () {},
                  child: Text('OK'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
