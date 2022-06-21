import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String num;
  final Color color;
  double? fontSize = 30;

  TextWidget({Key? key, this.fontSize, required this.num, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      num,
      style: TextStyle(
          color: color, fontSize: fontSize, fontWeight: FontWeight.bold),
    );
  }
}
