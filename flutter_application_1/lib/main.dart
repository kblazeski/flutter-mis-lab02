import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/QuestionAnswer.dart';
import 'package:flutter_application_1/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lab 02',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: '181103 - Flutter Lab 02'),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var questionIndex = 0;

  static const List<QuestionAnswer> questionsAndAnswers = [
    QuestionAnswer(
      question: "Choose shoes",
      answers: ['Puma', 'Addidas', 'Nike'],
    ),
    QuestionAnswer(
      question: "Choose pants",
      answers: ['Baggy', 'Trousers', 'Jeans'],
    ),
    QuestionAnswer(
      question: "Choose shirt",
      answers: ['T-Shirt', 'Blouse', 'V-Neck', 'Turtle Neck'],
    )
  ];

  void chooseAnswer() {
    setState(() {
      questionIndex += 1;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: questionIndex < questionsAndAnswers.length
          ? Quiz(
              questionsAndAnswers: questionsAndAnswers,
              chooseAnswer: chooseAnswer,
              questionIndex: questionIndex,
            )
          : Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 15),
                  child: const Text(
                    'Reset Quiz',
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(150),
                      primary: Colors.greenAccent,
                      onPrimary: Colors.red,
                    ),
                    onPressed: resetQuiz,
                    child: const Text('Reset'),
                  ),
                ),
              ],
            ),
    );
  }
}
