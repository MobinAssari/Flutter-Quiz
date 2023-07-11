import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz/question_records.dart';
import 'package:flutter_quiz/questions.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.answerList});

  List<Map<String, Object>> GetRecords() {
    final List<Map<String, Object>> records = [];

    for (var i = 0; i < answerList.length; i++) {
      records.add({
        'index': i + 1,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'selected_answer': answerList[i]
      });
    }
    return records;
  }

  final List<String> answerList;

  @override
  Widget build(context) {
    final records = GetRecords();
    var numAllQuestions = questions.length;
    var numCorrect = records.where((record) {
      return record['correct_answer'] == record['selected_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered ${numCorrect.toString()} out of ${numAllQuestions.toString()} questions correctly!',
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(
              height: 25,
            ),
            QuestionRecords(recordData: GetRecords()),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}
