import 'question.dart';

class Test {
  String title;
  List<Question> questions = [];
  Map<int, String> _answers = {};

  // TODO: add reader from json
  Test.stub() {
    title = 'Video Games';
    questions.add(Question(
        id: 1,
        title: 'What year was the game Team Fortress 2 released?',
        answers: ['2005', '2007', '2009', '2010'],
        correctAnswer: '2007'));
    questions.add(Question(
        id: 2,
        title:
            'The Mann Co. Store from Team Fortress 2 has the slogan "We hire mercenaries and get in fights".',
        answers: ['True', 'False'],
        correctAnswer: 'False'));
    questions.add(Question(
        id: 3,
        title: 'Who is Sonic\'s sidekick?',
        answers: ['Shadow', 'Knuckles', 'Amy', 'Tails'],
        correctAnswer: 'Tails'));
    questions.add(Question(
        id: 4,
        title: 'What was the name of the cancelled sequel of Team Fortress?',
        answers: [
          'Team Fortress 2: Brotherhood of Arms',
          'Team Fortress 2: Desert Mercenaries',
          'Team Fortress 2: Operation Gear Grinder',
          'Team Fortress 2: Return to Classic'
        ],
        correctAnswer: 'Team Fortress 2: Brotherhood of Arms'));
  }

  setAnswer(int answerId, String answer) {
    _answers[answerId] = answer;
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
