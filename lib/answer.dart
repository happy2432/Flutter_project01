import 'package:flutter/material.dart';
// import 'question.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            // onPrimary: Colors.amber,
            foregroundColor: Color.fromARGB(255, 247, 246, 250),
            backgroundColor: Color.fromARGB(255, 57, 4, 252)
            // textStyle: Color.blue,
            ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
