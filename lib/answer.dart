import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHundler;
  final String answerText;

  Answer(this.selectHundler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: selectHundler,
        color: Colors.blue,
        child: Text(answerText),
      ),
    );
  }
}
