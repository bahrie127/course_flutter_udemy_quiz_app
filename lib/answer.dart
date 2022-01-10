import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHundler;

  Answer(this.selectHundler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: selectHundler,
        color: Colors.blue,
        child: Text('Answer 1'),
      ),
    );
  }
}
