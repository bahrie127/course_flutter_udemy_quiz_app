import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Green', 'White', 'Red']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Elephant', 'Lion', 'Rabbit']
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': ['Avangers', 'X-Man', 'Fast and Furious', 'Spaider-Man']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz Aapp'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'] as String,
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
