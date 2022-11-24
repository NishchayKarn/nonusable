import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// import './question.dart';
// import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What PROBLEM are you facing?',
      'answer': [
        {'text': 'Stressed', 'score': 1},
        {'text': 'Low female interaction', 'score': 2},
        {'text': 'Can\'t sleep', 'score': 3},
        {'text': 'Assignment yet not complete', 'score': 4},
        {'text': 'Can\'t Study', 'score': 5},
        {'text': 'Feeling Horny', 'score': 6},
        {'text': 'Mess food victim', 'score': 7},
        {'text': 'Low on Money', 'score': 8},
        {'text': 'Angry on Someone', 'score': 9},
        {'text': 'Missing home', 'score': 10},
        {'text': 'Scared', 'score': 11}
      ],
    },
  ];
  var questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
      print(questionIndex);
      if (questionIndex < _questions.length) {
        print('we have more questions!');
      } else {
        print('No more questions!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student Helper'),
        ), 
        body: questionIndex < _questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
