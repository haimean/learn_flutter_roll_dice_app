import 'package:flutter/material.dart';
import 'package:learn_flutter_roll_dice_app/dice_roller.dart';

const Alignment bottomAlignment = Alignment.bottomCenter;
const Alignment endAlignment = Alignment.topCenter;
const List<Color> colorsPurple = [Colors.deepPurple, Colors.indigo];

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  const GradientContainer.purple({super.key}) : colors = colorsPurple;
  final List<Color> colors;

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 226, 229),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: bottomAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}
