//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHadler;

  Result(this.resultScore, this.resetHadler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 3) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 8) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 12) {
      resultText = 'You are  strange';
    } else {
      resultText = 'You are good';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(child: Text('Restart Quiz'), onPressed: resetHadler),
        ],
      ),
    );
  }
}
