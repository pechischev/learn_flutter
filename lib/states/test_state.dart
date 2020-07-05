import 'package:flutter/material.dart';

import 'package:mobile_app/models/test.dart';
import 'package:mobile_app/models/question.dart';

class TestState extends ChangeNotifier {
  TestModel test;

  int _currentQuestionIndex = 0;

  TestState(Object jsonData) {
    test = TestModel.fromJson(jsonData);
  }

  setAnswer(String answer) {
    test.setAnswer(currentQuestion.id, answer);
    notifyListeners();
  }

  nextQuestion() {
    _currentQuestionIndex += 1;
    notifyListeners();
  }

  prevQuestion() {
    _currentQuestionIndex -= 1;
    notifyListeners();
  }

  String getSelectedQuestionAnswer() {
    return test.getQuestionAnswer(currentQuestion.id);
  }

  Question get currentQuestion => test.questions[_currentQuestionIndex];

  String get title => test.title;

  bool get isFirstQuestion => _currentQuestionIndex == 0;
  bool get isFinishQuestion => _currentQuestionIndex == test.questions.length - 1;
}