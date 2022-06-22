import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color buttonbackgroundColor;
  final Color buttonTextColor;
  final Function(String)? onButtonClick;

  const CalculatorButton({
    Key? key,
    required this.text,
    required this.buttonbackgroundColor,
    required this.buttonTextColor,
    this.onButtonClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: buttonbackgroundColor,
        ),
        child: SizedBox(
          width: 70,
          height: 70,
          child: TextButton(
            onPressed: () {
              if (onButtonClick != null) {
                onButtonClick!(text);
              }
            },
            child: Text(
              text,
              style: TextStyle(
                color: buttonTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
