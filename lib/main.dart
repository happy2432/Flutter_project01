import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

//void main() {
//runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'White', 'score': 1},
        {'text': 'Red', 'score': 2},
        {'text': 'Blue', 'score': 5},
        {'text': 'Black', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Elephant', 'score': 1},
        {'text': 'Snake', 'score': 2},
        {'text': 'Cow', 'score': 3},
        {'text': 'Lion', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s  your favorite person?',
      'answers': [
        {'text': 'Papa', 'score': 1},
        {'text': 'Mom', 'score': 2},
        {'text': 'Bro', 'score': 3},
        {'text': 'All', 'score': 5},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No More Question');
    }
  }

  @override
  Widget build(BuildContext context) {
    // // var dummy = const ['hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // dose not work if questions is const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                question: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
