class Question {
  int id;
  String title;
  String correctAnswer;
  List<String> answers = [];

  Question({ this.id, this.title, this.answers, this.correctAnswer });
}