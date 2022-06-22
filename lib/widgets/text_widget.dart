import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String num;
  final Color color;
  double? fontSize = 30;
  AlignmentGeometry? alignment;
  EdgeInsetsGeometry? edgeInsetGeometry;

  TextWidget(
      {Key? key,
      this.fontSize,
      this.alignment,
      this.edgeInsetGeometry,
      required this.num,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsetGeometry ?? const EdgeInsets.symmetric(horizontal: 8),
      child: Align(
        alignment: alignment ?? Alignment.centerRight,
        child: Text(
          num,
          style: TextStyle(
              color: color, fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
