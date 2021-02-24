import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';

import '../states/test_state.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var test = Provider.of<TestState>(context);

    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(test.title, style: TextStyle(fontSize: 32)),
              SizedBox(height: 150 ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/test');
                },
                child: Text('Get Started'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
