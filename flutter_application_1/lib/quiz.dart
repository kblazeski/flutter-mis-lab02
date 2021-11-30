import 'package:flutter/material.dart';
import 'package:flutter_application_1/answer.dart';
import 'package:flutter_application_1/model/QuestionAnswer.dart';
import 'package:flutter_application_1/question.dart';

class Quiz extends StatelessWidget {
  final List<QuestionAnswer> questionsAndAnswers;
  final Function() chooseAnswer;
  final int questionIndex;

  const Quiz({
    Key? key,
    required this.questionIndex,
    required this.questionsAndAnswers,
    required this.chooseAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question: questionsAndAnswers[questionIndex].question,
        ),
        ...questionsAndAnswers[questionIndex].answers.map((answer) {
          return Answer(
            answer: answer,
            chooseAnswer: chooseAnswer,
          );
        })
      ],
    );
  }
}
