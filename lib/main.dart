import 'package:flutter/material.dart';
import 'package:dice/background.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Background(
            colors: [
              Colors.grey,
              Colors.black,
              Colors.lime
            ]
        ),
      ),
    ),
  );
}
