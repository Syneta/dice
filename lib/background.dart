import 'package:dice/dice_roller.dart';
import 'package:flutter/material.dart';

const beginHere = Alignment.bottomCenter;
const endHere = Alignment.topRight;

class Background extends StatelessWidget {
  const Background({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: beginHere,
            end: endHere,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ),
    );
  }
}
