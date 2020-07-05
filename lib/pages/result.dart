import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app/states/test_state.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<TestState>(context);

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
                  Text('${state.test.getResult()} / ${state.test.questions.length}', style: TextStyle(fontSize: 32)),
                  Text(state.test.getResult() / state.test.questions.length > 0.6 ? 'success' : 'fail', style: TextStyle(fontSize: 32)),
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
