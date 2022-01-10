import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

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
                    ...(questions[questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(answerQuestion, answer);
                    }).toList()
                  ],
                );
  }
}
