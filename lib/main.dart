import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                onPressed: null,
                child: Text('Answer 1'),
              ),
              RaisedButton(
                onPressed: null,
                child: Text('Answer 2'),
              ),
              RaisedButton(
                onPressed: null,
                child: Text('Answer 3'),
              ),
            ],
          )),
    );
  }
}
