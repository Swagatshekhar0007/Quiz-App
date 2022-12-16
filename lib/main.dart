//import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
//import './question.dart';
//import './answer.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  /*list of Maps*/ final _questions = const [
    /*1st Map*/ {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 10},
        {'text': 'Cyan', 'score': 70},
        {'text': 'Black', 'score': 10}
      ]
    },
    /*2nd Map*/ {
      'questionText': 'What\'s your favoutite animal? ',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Lion', 'score': 5},
        {'text': 'Tiger', 'score': 15},
        {'text': 'Peacock', 'score': 20},
        {'text': 'Wolves', 'score': 70}
      ]
    },
    /*3rd Map*/ {
      'questionText': 'Who\'s your favoutite Instructoor? ',
      'answers': [
        {'text': 'Mummy', 'score': 100},
        {'text': 'Papa', 'score': 100},
        {'text': 'Experience', 'score': 50},
        {'text': 'All the above', 'score': 250},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more Questions');
    } else
      print('We did it!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore,_resetQuiz)),
    );
  }
}
