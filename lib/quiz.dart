//import 'dart:html';
//import 'dart:ui';

//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String,Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  

  Quiz({required this.questions,required this.answerQuestion,required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text'].toString());
        }).toList()
      ],
    );
  }
} 
