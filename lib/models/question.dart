class Question {
  int id;
  String title;
  String correctAnswer;
  List answers = [];

  Question({ this.id, this.title, this.answers, this.correctAnswer });
}