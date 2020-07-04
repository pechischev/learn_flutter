import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text('Question', style: TextStyle(fontSize: 26)),
              ),
              Container(
                child: TestAnswersWidget(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text('Back'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  RaisedButton(
                    child: Text('Confirm'),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/result');
                    },
                  ),
                ],
              )
            ]
        ),
      ),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class TestAnswersWidget extends StatefulWidget {
  TestAnswersWidget({Key key}) : super(key: key);

  @override
  _TestAnswersWidgetState createState() => _TestAnswersWidgetState();
}

class _TestAnswersWidgetState extends State<TestAnswersWidget> {
  num currentAnswer;

  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Lafayette'),
          leading: Radio(
            value: 1,
            groupValue: currentAnswer,
            onChanged: (num value) {
              setState(() {
                currentAnswer = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Thomas Jefferson'),
          leading: Radio(
            value: 2,
            groupValue: currentAnswer,
            onChanged: (num value) {
              setState(() {
                currentAnswer = value;
              });
            },
          ),
        ),
      ]
    );
  }
}
