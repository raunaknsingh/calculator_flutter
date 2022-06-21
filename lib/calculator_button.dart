import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color buttonbackgroundColor;
  final Color buttonTextColor;
  final Function()? onButtonClick;

  const CalculatorButton({
    Key? key,
    required this.text,
    required this.buttonbackgroundColor,
    required this.buttonTextColor,
    required this.onButtonClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: buttonbackgroundColor,
      ),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          onPressed: onButtonClick,
          child: Text(
            text,
            style: TextStyle(
              color: buttonTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
