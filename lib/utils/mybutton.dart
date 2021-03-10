import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  MyButton({@required this.label, this.onpress});

  final String label;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onpress,
        child: Text(
          label,
          style: TextStyle(
              fontSize: 17.0
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xff3de868),
          padding: EdgeInsets.all(15.0),
        ),
      ),
    );
  }
}