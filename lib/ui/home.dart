import 'package:flutter/material.dart';
import 'package:guess_app/utils/customcard.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffeeeeee),
        centerTitle: true,
        title: Text(
          'Random Guess Game',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    onpress: (){
                      Navigator.pushNamed(context, '/number');
                    },
                    image: 'images/number.png',
                    label: 'Number',
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    onpress: (){
                      print('Letter Pressed');
                    },
                    image: 'images/letter.png',
                    label: 'Letter',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    onpress: (){
                      Navigator.pushNamed(context, '/dice');
                    },
                    image: 'images/dice.png',
                    label: 'Rice Roll',
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    onpress: (){
                      print('Rock Pressed Pressed');
                    },
                    image: 'images/rock.png',
                    label: 'Rock n Scissors',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    onpress: (){
                      print('Question Pressed');
                    },
                    image: 'images/question.png',
                    label: 'Yes or No',
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    onpress: (){
                      print('Coin Pressed');
                    },
                    image: 'images/coin.png',
                    label: 'Coin Flip',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
