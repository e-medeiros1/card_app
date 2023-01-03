import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Texts extends StatelessWidget {
  Texts({Key? key, required this.text, required this.style}) : super(key: key);

  String text;

  TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
