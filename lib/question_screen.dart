import 'package:flutter/material.dart';
import 'package:flutter_quiz/questions.dart';

import 'answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.selectedAnswer});

  final void Function(String answer) selectedAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void changeQuestion(String answer) {
    widget.selectedAnswer(answer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    var currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.question,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...currentQuestion.getShuffle().map(
                (answer) {
                  return AnswerButton(
                    answer: answer,
                    onPress: () {
                      changeQuestion(answer);
                    },
                  );

                }

              ),SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
