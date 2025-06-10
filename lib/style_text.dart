import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.text, {super.key});
  final dynamic text;
  @override
  Widget build(context) {
    return Text(text, style: TextStyle(fontSize: 28.0, color: Colors.white));
  }
}
