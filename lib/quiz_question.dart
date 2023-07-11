class QuizQuestion{
  QuizQuestion(this.question,this.answers);

  String question;
  List<String> answers;

  List<String> getShuffle(){
    var shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}