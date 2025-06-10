import 'package:flutter/material.dart';
import 'package:first_flutter_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 128, 109, 180),
          Color.fromARGB(255, 109, 172, 180),
        ),
      ),
    ),
  );
}
