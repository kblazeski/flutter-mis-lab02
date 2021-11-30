import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 15),
      child: Text(question,
          style: const TextStyle(color: Colors.blue, fontSize: 25),
          textAlign: TextAlign.center),
    );
  }
}
