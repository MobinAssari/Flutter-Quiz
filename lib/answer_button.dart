import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({required this.answer,required this.onPress, super.key});

  String answer;
  void Function() onPress;

  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 22, 0, 77),
            foregroundColor: Colors.white,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30)),
        child: Text(
          answer,
          textAlign: TextAlign.center,
        ));
  }
}
