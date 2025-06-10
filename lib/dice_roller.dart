import 'dart:math';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/style_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String text = '';
  var firstImage = 2;
  var secondImage = 2;
  rolldice() {
    setState(() {
      firstImage = Random().nextInt(6) + 1;
      secondImage = Random().nextInt(6) + 1;
      if (firstImage > secondImage) {
        text = 'First Dice Wins!';
      } else if (firstImage < secondImage) {
        text = 'Second Dice Wins!';
      } else {
        text = 'It\'s a Tie!';
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StyleText(text),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/dice-$firstImage.png', width: 150),
            SizedBox(width: 10),
            Image.asset('assets/images/dice-$secondImage.png', width: 150),
          ],
        ),

        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 20.0),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          onPressed: rolldice,
          child: StyleText('Roll Dice.'),
        ),
      ],
    );
  }
}
