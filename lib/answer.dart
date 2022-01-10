import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHundler;
  final String answerText;

  Answer(this.selectHundler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHundler,
        style: ElevatedButton.styleFrom(
          primary: Colors.lightBlue,
          onPrimary: Colors.white,
        ),
        child: Text(answerText),
      ),
    );
  }
}
