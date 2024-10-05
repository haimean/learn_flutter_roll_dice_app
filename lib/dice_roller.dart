import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = Random().nextInt(6) + 1;

  onPressed() {
    setState(() {
      activeDiceImage = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceImage.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(
              20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 32,
            ),
          ),
          child: const Text(
            "Roll Dice",
          ),
        ),
      ],
    );
  }
}
