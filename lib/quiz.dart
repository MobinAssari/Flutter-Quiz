import 'package:flutter/material.dart';
import 'package:flutter_quiz/question_screen.dart';
import 'package:flutter_quiz/questions.dart';
import 'package:flutter_quiz/result_screen.dart';
import 'package:flutter_quiz/start_screen.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  var activeScreen = 'start_screen';
  List<String> selectedAnswers = [];



  @override
  void SwichScreen() {
    setState(() {
      activeScreen = 'question_screen';
    });
  }
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'result_screen';
      });
    }
  }
  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(startQuiz: SwichScreen);
    if (activeScreen == 'question_screen') {
      screenWidget = QuestionScreen(
        selectedAnswer: chooseAnswer,
      );
    }
    if(activeScreen == 'result_screen'){
      screenWidget = ResultScreen(answerList: selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0, 1),
                end: Alignment(0, -1),
                colors: [
                  Color.fromARGB(255, 96, 66, 138),
                  Color.fromARGB(255, 127, 100, 187)
                ]),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
