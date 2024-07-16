import 'package:flutter/material.dart';
import 'package:random_dice/styled_text.dart';
import 'dart:math';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int randomNamber = 1;

  void rollDice() {
    setState(() {
      randomNamber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice_$randomNamber.png',
          width: 200,
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: TextButton(
              onPressed: rollDice, child: const StyledText('Roll dice!')),
        )
      ],
    );
  }
}
