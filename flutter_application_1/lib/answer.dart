import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function() chooseAnswer;
  const Answer({Key? key, required this.answer, required this.chooseAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromWidth(150),
        primary: Colors.greenAccent,
        onPrimary: Colors.red
      ),
      onPressed: chooseAnswer,
      child: Text(answer),
    );
  }
}
