import 'package:flutter/material.dart';

class WhiteText extends StatelessWidget {
  const WhiteText(this.text, {super.key, this.fontSize = 14.0});

  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: fontSize),);
  }
}
