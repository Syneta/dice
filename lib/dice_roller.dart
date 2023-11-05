import 'dart:math';
import 'package:flutter/material.dart';

final random = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{
  var diceNumber = 5;
  void rollDice(){
    setState(() {
    diceNumber = random.nextInt(6) + 1;
    });
  }
  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$diceNumber.png',
            width: 240,
          ),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 25),
                foregroundColor: Colors.cyanAccent.shade100,
                textStyle: TextStyle(fontSize: 40)),
              child: const Text('Roll'),
         ),
      ],
    );
  }
}