import 'dart:math';

import 'package:flutter/material.dart';
import 'package:guess_app/utils/mybutton.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffeeeeee),
        title: Text(
          'Guess the next dice',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 11,
              child: Image(
                image: AssetImage('images/dice$number.png'),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: MyButton(
                    onpress: (){
                      setState(() {
                        number = Random().nextInt(6) + 1;
                      });
                    },
                    label: 'Roll Dice',
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: MyButton(
                    onpress: (){
                      setState(() {
                        number = 1;
                      });
                    },
                    label: 'Reset',
                  ),
                ),
              ],
            ),
          ],

        ),
      ),
    );
  }
}
