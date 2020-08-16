import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(RollingDice());
}

class RollingDice extends StatefulWidget {
  @override
  _RollingDiceState createState() => _RollingDiceState();
}

class _RollingDiceState extends State<RollingDice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[900],
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: Text('Rolling Dice'),
        ),
        body: Center(
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: FlatButton(
                      onPressed: () {
                        leftDiceNumber= Random().nextInt(6)+1;
                      },
                      child: Image.asset('images/dice$leftDiceNumber.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: FlatButton(child: Image.asset('images/dice1.png')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
