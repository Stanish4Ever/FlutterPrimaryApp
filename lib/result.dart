import 'package:flutter/material.dart';
class result extends StatelessWidget
{
  Function resetter;
  result(this.resetter);
  Widget build(BuildContext context)
  {
    return Center(child:Column(
      children: <Widget>[
        Container( width: double.infinity, 
          margin: EdgeInsets.all(16),
               
          child:Text (" You did it, you son of a Good Bitch!", 
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,), 
        textAlign: TextAlign.center ,)),
        
        FlatButton(onPressed: resetter, child: Text("Restart",), textColor: Colors.blueAccent,),
      ],
    ));
      }
}