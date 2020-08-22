import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Center(
              child: Text('Dice App'),
            ),
            backgroundColor: Colors.redAccent,
          ),
          body: DicePage(),
        ),
      ),
    );

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDice = 2, rightDice = 1;

  void changeVal(){
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDice.png'),
              onPressed: (){
                changeVal();
              },
            ),
          ),
          Expanded(
            child: FlatButton(child: Image.asset('images/dice$rightDice.png'),
              onPressed: (){
                changeVal();
              },
            ),
          ),
        ],
      ),
    );
  }
}



