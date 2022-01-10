import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

typedef Int2VoidFunc = void Function(int);
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Int2VoidFunc answerQuestion;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    Question(
                      questions[questionIndex]['questionText'] as String,
                    ),
                    ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
                        .map((answer) {
                      return Answer(() => answerQuestion(answer['score'] as int), answer['text'] as String);
                    }).toList()
                  ],
                );
  }
}
