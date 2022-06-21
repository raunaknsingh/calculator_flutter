import 'package:calculator_flutter/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'widgets/calculator_button.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      textToDisplay = '';
    } else if (btnVal == 'AC') {
      num1 = 0;
      num2 = 0;
      res = '';
      textToDisplay = '';
      history = '';
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      num1 = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
      // print('num1 -> $num1 , res -> $res, texttodisplay -> $textToDisplay');
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-$textToDisplay';
      } else {
        res = textToDisplay[1];
      }
    } else if (btnVal == '=') {
      num2 = int.parse(textToDisplay);
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
      res = int.parse(textToDisplay + btnVal).toString();
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextWidget(
                  num: history,
                  fontSize: 30,
                  color: Colors.black54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextWidget(
                  num: textToDisplay,
                  fontSize: 60,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
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
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
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
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
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
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
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
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
