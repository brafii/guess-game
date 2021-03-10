import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {

  ReuseCard({@required this.label, @required this.image, @ required this.onpress});

  final String image;
  final String label;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 100.0,),
            Text(
              label,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
              ),
            ),
          ],
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Color(0xff3de868),
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}