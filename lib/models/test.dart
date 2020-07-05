import 'question.dart';

class TestModel {
  String title;
  List<Question> questions = [];
  Map<int, String> _answers = {};

  TestModel.fromJson(dataJson) {
    title = dataJson['title'];
    var questionsJson = dataJson['questions'] as List;

    for (var questionJson in questionsJson) {
      questions.add(Question(
          id: questionJson['id'] as int,
          title: questionJson['title'] as String,
          answers: questionJson['answers'].map((answer) => answer).toList(),
          correctAnswer: questionJson['correct_answer'] as String
      ));
    }
  }

  setAnswer(int questionId, String answer) {
    _answers[questionId] = answer;
  }

  String getQuestionAnswer(int questionId) {
    return _answers[questionId];
  }

  int getResult() {
    bool isCorrectAnswer(Question question) =>
        _answers.containsKey(question.id) &&
        _answers[question.id] == question.correctAnswer;

    return questions.fold(
        0,
        (int previousValue, Question question) =>
            isCorrectAnswer(question) ? ++previousValue : previousValue);
  }
}
