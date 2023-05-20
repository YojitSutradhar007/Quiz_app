class QuestionSummary {
  QuestionSummary(
      {required this.index,
      required this.question,
      required this.chooseAnswer,
      required this.correctAnswer});

  final int index;
  final String question;
  final String correctAnswer;
  final String chooseAnswer;
}
