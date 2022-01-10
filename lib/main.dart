import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz Aapp'),
          ),
          body: Column(
            children: [
              Text('The question!'),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text('Answer 1'),
              ),
              RaisedButton(
                onPressed: () => print('Answer 2 chosen'),
                child: Text('Answer 2'),
              ),
              RaisedButton(
                onPressed: () {
                  // statement
                  print('answer 2 chosen');
                },
                child: Text('Answer 3'),
              ),
            ],
          )),
    );
  }
}
