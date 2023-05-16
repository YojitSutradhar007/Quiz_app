class Questions {
    Questions(this.question, this.options);

  final String question;
    List<String> options;


  List<String> getShuffledAnswers () {
    List<String> shuffledList= [...options];
    shuffledList.shuffle();
    return shuffledList;
  }
}
