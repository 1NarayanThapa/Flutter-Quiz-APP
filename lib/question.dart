import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;
  Question( this.question);



  @override
  Widget build(BuildContext context) {
    return Container(
    
      width: double.infinity,
    margin: EdgeInsets.only(top: 10,bottom: 10),
    
      
          child: Text(
       
        question,style:TextStyle(fontSize: 23,
    color: Colors.blue,
    fontWeight: FontWeight.bold 
    ) ,
        textAlign: TextAlign.center,

      ),
    );
      
    
  }
}