import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key key}) : super(key: key);
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 1) {
      resultText =
          'Don\'t stress the could have, if it should have , it would have \n\n Do deep breathing and think about why you started, Nap is the best way to get rid of stress☺️';
    } else if (resultScore == 2) {
      resultText =
          'You are not alone, \n40 lakh engineers are feeling the same,\n\n so chill';
    } else if (resultScore == 3) {
      resultText =
          'Lay down on your bed in a comfortable position and promise to not open your eyes for next 30 minute';
    } else if (resultScore == 4) {
      resultText =
          'Try doing whatever you can, atlast copying is always an option';
    } else if (resultScore == 5) {
      resultText =
          'Don\'t study!!, first know why you want to study and give yourself some time \n\nand then study like this is all you ever wanted to do';
    } else if (resultScore == 6) {
      resultText = 'link : https://youtu.be/AETFvQonfV8 ';
    } else if (resultScore == 7) {
      resultText = 'Vacations ahead!';
    } else if (resultScore == 8) {
      resultText ='Who is high on money? \n\n Everyone lacks those extra bucks to fullfill their desires \n\n Keep grinding';
    } else if (resultScore == 9) {
      resultText = 'Run for 1 km then think what is best';
    } else if (resultScore == 10) {
      resultText = 'Go visit home for few days, \n\n get recharged ';
    } else if (resultScore == 11) {
      resultText =
          'Just do it, if you know how to conquer the thing you are scared of, then no one can stop you from becoming successfull';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Another Problem'),
            style: TextButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 238, 140, 12),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
