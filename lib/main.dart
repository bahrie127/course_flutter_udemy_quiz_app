import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _MyAppState();
    }
}

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
    _questionIndex = _questionIndex + 1;      
        });
    print(_questionIndex);
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
              Question(
                questions[_questionIndex],
              ),
              RaisedButton(
                onPressed: _answerQuestion,
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
