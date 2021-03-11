import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restart;

  final int totalScore;
  Result(this.totalScore, this.restart);
  String get value {
    String value;
    if (totalScore == 0) {
      value = 'fail:your score is 0';
    } else if (totalScore == 10) {
      value = 'fail:your score is 10';
    } else if (totalScore == 20) {
      value = 'pass:your score is 20';
    } else if (totalScore == 30) {
      value = 'pass:your score is 30';
    } else if (totalScore == 40) {
      value = 'pass:your score is 40:congratulation';
    }
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(value,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))),
        
        RaisedButton(child: Text("restart quiz",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),onPressed: restart,)
      ],
    );
  }
}
