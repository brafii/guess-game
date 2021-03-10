import 'package:flutter/material.dart';
import 'package:guess_app/utils/mybutton.dart';

class Number extends StatefulWidget {
  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {

  int number = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffeeeeee),
        title: Text(
          'Multiples of two',
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
            Text(
              '$number',
              style: TextStyle(
                fontSize: 130.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Expanded(
                  child: MyButton(
                    onpress: (){
                      setState(() {
                        number = number + 2;
                      });
                    },
                    label: 'Multiples of two',
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: MyButton(
                    onpress: (){
                      setState(() {
                        number = 0;
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
