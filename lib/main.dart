import 'package:flutter/material.dart';
import 'package:primary_app_build/result.dart';
import './Question.dart';
import 'Answer.dart';
import 'quiz.dart';

void main() => runApp(_STN());

class _STN extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _STNState();
  }
}

class _STNState extends State<_STN> {
  var _qIndex = 0;

  void _answerQuestion() {
     setState(() => _qIndex++); 
    
  }
  void _reset()
  {
   setState(() {
      _qIndex = 0;
   });
  }

  Widget build(BuildContext context) {
    //var questions = ['Name?', 'kaisan ba?'];
    var _questions = [
      {
        'question': 'Who are you?',
        'ans': ['Stanish', 'Not Stanish']
      },
      {
        'question': 'How you doin?',
        'ans': ['Bhot Hardd', 'MC hu mai jo issme aya', 'sai ha bosss']
      }
    ];
    //var option1 = ['Stanish', 'Bhot Hard'];
    //var option2 = ['Aayush', 'Style mai rehne ka'];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Container(
              width: double.infinity,
              child: Text(
                "KBC",
                textAlign: TextAlign.center,
              ),
            ),
            backgroundColor: Colors.red,
          ),
          body: _qIndex<_questions.length? quiz(_questions, _qIndex, _answerQuestion):result(_reset),

          backgroundColor: Colors.white,
        ));
  }
}
