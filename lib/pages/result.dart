import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text('Result', style: TextStyle(fontSize: 32)),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text('7 / 10', style: TextStyle(fontSize: 32)),
                  Text('success', style: TextStyle(fontSize: 32)),
                ],
              ),
            ),
            FlatButton(
              child: Text('To home', style: TextStyle(decoration: TextDecoration.underline)),
              onPressed: () {
                Navigator.pop(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
