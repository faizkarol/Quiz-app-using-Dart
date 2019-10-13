import 'package:flutter/material.dart';

//Import question widget
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is the capital of Spain?',
      'answers': [
        {'text': 'Madrid', 'score': 10},
        {'text': 'Barcelona', 'score': 0},
        {'text': 'Paris', 'score': 0},
        {'text': 'Athens', 'score': 0},
        {'text': 'London', 'score': 0},
      ],
    },
    {
      'questionText': 'How many centimeters in a meter??',
      'answers': [
        {'text': '10', 'score': 0},
        {'text': '82', 'score': 0},
        {'text': '100', 'score': 10},
        {'text': '46', 'score': 0},
        {'text': '67', 'score': 0},
      ],
    },
    {
      'questionText': 'What year is it??',
      'answers': [
        {'text': '1992', 'score': 0},
        {'text': '2019', 'score': 10},
        {'text': '1834', 'score': 0},
        {'text': '2109', 'score': 0},
        {'text': '3026', 'score': 0},
      ],
    },
    {
      'questionText': 'Bonus Point: Heads or Tails?',
      'answers': [
        {'text': 'Heads', 'score': 10},
        {'text': 'Tails', 'score': 0},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz App',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore),
      ),
    );
  }
}