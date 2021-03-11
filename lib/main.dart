import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myproject/quiz.dart';
import 'package:myproject/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num = 0;
  var totalScore=0;
  void restart(){
    setState(() {
      totalScore=0;
      num=0;
    });
  }

  void answerQuestion(int score) {
    totalScore+=score;
    setState(() {
      num = num + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'num': "what's the capital city of nepal?",
        'answer': [
          {'text': 'nepal', 'score': 0},
          {'text': 'kathmandu', 'score': 10},
          {'text': 'delhi', 'score': 0},
          {'text': 'biratnagar', 'score': 0}
        ]
      },
      {
        'num': "what's the height of sagarmatha?",
        'answer': [
          {'text': '8848m', 'score': 0},
          {'text': '8848.86m', 'score': 10},
          {'text': '8848.88m', 'score': 0},
          {'text': '8888.86', 'score': 0}
        ],
      },
      {
        'num': "what's the national game of nepal?",
        'answer': [
          {'text': 'football ', 'score': 0},
          {'text': 'basketball', 'score': 0},
          {'text': 'dandibiyo', 'score': 0},
          {'text': 'volleyball', 'score': 10}
        ],
      },
      {
        'num': "what's the actual area of nepal?",
        'answer': [
          {'text': '147181sqKm', 'score': 0},
          {'text': '147182sqkm', 'score': 0},
          {'text': '247181sqkm', 'score': 0},
          {'text': '147516sqkm', 'score': 10}
        ]
      }
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "test your brain FM:40,PM:20",
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        body: num < questions.length
            ? Quiz(
                questions: questions,
                num: num,
                answerQuestion: answerQuestion,
              )
            : Result(totalScore,restart),
      ),
    );
  }
}
