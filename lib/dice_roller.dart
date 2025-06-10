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
  var currentState = 2;
  rolldice() {
    setState(() {
      currentState = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentState.png', width: 200),
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
