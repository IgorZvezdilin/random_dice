import 'package:flutter/material.dart';
import 'package:random_dice/gradient_container.dart';

class RandomDiceApp extends StatelessWidget {
  const RandomDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Test',
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(120, 5, 240, 15),
            Color.fromARGB(120, 150, 55, 15),
          ],
        ),
      ),
    );
  }
}
