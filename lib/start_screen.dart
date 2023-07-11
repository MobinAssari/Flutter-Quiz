import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.startQuiz,super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(70)),
          Image.asset('assets/images/quiz-logo.png', width: 275,color:const Color.fromARGB(
              213, 255, 255, 255),),

          const SizedBox(height: 50),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed:startQuiz,
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 15),
              fixedSize: const Size(150, 50),
            ),
            icon:const  Icon(Icons.arrow_right_alt),
            label:const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
