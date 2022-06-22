import 'package:flutter/material.dart';

import 'widgets/calculator_button.dart';
import 'widgets/text_widget.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int num1 = 0;
  int num2 = 0;
  String res = '';
  String textToDisplay = "";
  String history = "";
  String operation = "";

  void btnOnClick(String btnVal) {
    // print(btnVal);
    if (btnVal == 'C') {
      num1 = 0;
      num2 = 0;
      res = '';
      // textToDisplay = '';
    } else if (btnVal == 'AC') {
      num1 = 0;
      num2 = 0;
      res = '';
      // textToDisplay = '';
      history = '';
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      num1 = int.parse(res);
      res = '';
      operation = btnVal;
      // print('num1 -> $num1 , res -> $res, texttodisplay -> $textToDisplay');
    } else if (btnVal == '<') {
      res = res.substring(0, res.length - 1);
    } else if (btnVal == '+/-') {
      if (res[0] != '-') {
        res = '-$res';
      } else {
        res = res.substring(1);
      }
    } else if (btnVal == '=') {
      num2 = int.parse(res);
      if (operation == '+') {
        res = (num1 + num2).toString();
        history = num1.toString() + operation.toString() + num2.toString();
      } else if (operation == '-') {
        res = (num1 - num2).toString();
        history = num1.toString() + operation.toString() + num2.toString();
      } else if (operation == 'X') {
        res = (num1 * num2).toString();
        history = num1.toString() + operation.toString() + num2.toString();
      } else if (operation == '/') {
        res = (num1 / num2).toString();
        history = num1.toString() + operation.toString() + num2.toString();
      }
    } else {
      res = int.parse(btnVal).toString();
      print("res -> $res");
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.purple[100],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextWidget(
              num: history,
              fontSize: 30,
              color: Colors.black54,
            ),
            TextWidget(
              num: textToDisplay,
              fontSize: 60,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButton(
                  text: 'AC',
                  buttonbackgroundColor: Colors.red,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: 'C',
                  buttonbackgroundColor: Colors.red,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '<',
                  buttonbackgroundColor: Colors.red,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '/',
                  buttonbackgroundColor: Colors.green,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButton(
                  text: '9',
                  buttonbackgroundColor: Colors.deepPurple,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '8',
                  buttonbackgroundColor: Colors.deepPurple,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '7',
                  buttonbackgroundColor: Colors.deepPurple,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: 'X',
                  buttonbackgroundColor: Colors.green,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButton(
                  text: '6',
                  buttonbackgroundColor: Colors.deepPurple,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '5',
                  buttonbackgroundColor: Colors.deepPurple,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '4',
                  buttonbackgroundColor: Colors.deepPurple,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '-',
                  buttonbackgroundColor: Colors.green,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButton(
                  text: '3',
                  buttonbackgroundColor: Colors.deepPurple,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '2',
                  buttonbackgroundColor: Colors.deepPurple,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '1',
                  buttonbackgroundColor: Colors.deepPurple,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '+',
                  buttonbackgroundColor: Colors.green,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButton(
                  text: '+/-',
                  buttonbackgroundColor: Colors.deepPurple,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '0',
                  buttonbackgroundColor: Colors.deepPurple,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '00',
                  buttonbackgroundColor: Colors.deepPurple,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
                CalculatorButton(
                  text: '=',
                  buttonbackgroundColor: Colors.green,
                  buttonTextColor: Colors.white,
                  onButtonClick: btnOnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
