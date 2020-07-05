import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:provider/provider.dart';
import 'package:mobile_app/states/test_state.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var test = Provider.of<TestState>(context);
    var question = test.currentQuestion;

    return Scaffold(
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(question.title, style: TextStyle(fontSize: 26)),
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
                      if (test.isFirstQuestion) {
                        Navigator.pop(context);
                        return;
                      }
                      test.prevQuestion();
                    },
                  ),
                  RaisedButton(
                    child: Text('Confirm'),
                    onPressed: () {
                      if (test.isFinishQuestion) {
                        Navigator.pushReplacementNamed(context, '/result');
                        return;
                      }
                      test.nextQuestion();
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
  Widget build(BuildContext context) {
    var test = Provider.of<TestState>(context);
    var question = test.currentQuestion;

    return Column(
      children: question.answers.map((answer) => new ListTile(
        title: Text(answer),
        leading: Radio(
          value: answer,
          groupValue: test.getSelectedQuestionAnswer(),
          onChanged: (String value) {
            test.setAnswer(value);
          },
        ),
      )).toList()
    );
  }
}
