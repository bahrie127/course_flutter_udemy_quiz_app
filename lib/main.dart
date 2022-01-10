import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return MyAppState();
    }
}

class MyAppState extends State<MyApp>{
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
    questionIndex = questionIndex + 1;      
        });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    questions.add("What\'s your favorite movie?");
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz Aapp'),
          ),
          body: Column(
            children: [
              Text(
                questions[questionIndex],
              ),
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
