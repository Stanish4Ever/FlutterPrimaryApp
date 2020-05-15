import 'package:flutter/material.dart';
class Answer extends StatelessWidget{
  String option; final Function pointer;
  Answer(this.option, this.pointer);
  Widget build(BuildContext context)
  {
   
    return Container(
      width: double.infinity,
      child:   RaisedButton(
                child: Text(option),
                onPressed: pointer,)
    );
    
  }
}