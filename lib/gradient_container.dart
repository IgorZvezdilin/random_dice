import 'package:flutter/material.dart';
import 'package:random_dice/dice_roller.dart';

const aligmentTopLeft = Alignment.topLeft;
const aligmentBottomRight = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  const GradientContainer({super.key, required this.colors});

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors,
              begin: aligmentTopLeft,
              end: aligmentBottomRight)),
      child: const Center(child: DiceRoller()),
    );
  }
}
