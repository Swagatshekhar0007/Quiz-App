import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 243, 33, 37)),
          foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 0, 212))
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
