import 'package:flutter/material.dart';

void main() {
  runApp(RollingDice());
}
class RollingDice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors. teal[900],
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
                    child: FlatButton(child: Image.asset('images/dice1.png')),
                  ),
                ),
                Expanded(
                    child:Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FlatButton(
                          child: Image.asset('images/dice1.png')),
                    ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


