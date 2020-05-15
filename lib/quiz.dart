import 'package:flutter/material.dart';
import './Question.dart';
import 'Answer.dart';

class quiz extends StatelessWidget{
  final List<Map<String, Object>> questions;
  final int qIndex;
  final Function answerQuestion;
  quiz(this.questions, this.qIndex, this.answerQuestion);
  Widget build(BuildContext context)
  {
    return Column(
            children: [
              Question(
                questions[qIndex]['question'],
              ),
              ...(questions[qIndex]['ans'] as List<String>).map((anskey) =>
                 Answer(anskey, answerQuestion)
              ).toList(),
            ],
          );
  }

}