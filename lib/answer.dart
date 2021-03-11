import 'package:flutter/material.dart';



class Answer extends StatelessWidget {
  final Function functionvalue;
  final String answervalue;

  Answer(this.functionvalue, this.answervalue);


  @override
  Widget build(BuildContext context) {

    return  Container(
      
 width: double.infinity,
      child:  RaisedButton(
        textColor: Colors.white,
         color:Colors.blue,
                child: Text(answervalue),
                onPressed:functionvalue,
              ),
              
             );
      
    
  }
}