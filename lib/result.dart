import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore < 150)
      resultText = 'You are decent!';
    else if (resultScore <= 200)
      resultText = 'Chalega Bhai!';
    else
      resultText = 'You are Awesome and Innocent!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    print(resultScore);
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text('Your score is',style: TextStyle(fontSize: 20,)),
          Text("$resultScore",style: TextStyle(fontSize: 25),),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            // ignore: prefer_const_constructors
            style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 120, 2, 128)),
          )
          )
        ],
      ),
    );
  }
}
