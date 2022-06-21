import 'package:flutter/material.dart';
import 'calculator_button.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.purple[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalculatorButton(
                      text: 'AC',
                      buttonbackgroundColor: Colors.red,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: 'C',
                      buttonbackgroundColor: Colors.red,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '<',
                      buttonbackgroundColor: Colors.red,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '/',
                      buttonbackgroundColor: Colors.green,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
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
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '8',
                      buttonbackgroundColor: Colors.deepPurple,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '7',
                      buttonbackgroundColor: Colors.deepPurple,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: 'X',
                      buttonbackgroundColor: Colors.green,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
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
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '5',
                      buttonbackgroundColor: Colors.deepPurple,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '4',
                      buttonbackgroundColor: Colors.deepPurple,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '-',
                      buttonbackgroundColor: Colors.green,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
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
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '2',
                      buttonbackgroundColor: Colors.deepPurple,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '1',
                      buttonbackgroundColor: Colors.deepPurple,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '+',
                      buttonbackgroundColor: Colors.green,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
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
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '0',
                      buttonbackgroundColor: Colors.deepPurple,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '00',
                      buttonbackgroundColor: Colors.deepPurple,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
                    ),
                    CalculatorButton(
                      text: '=',
                      buttonbackgroundColor: Colors.green,
                      buttonTextColor: Colors.white,
                      onButtonClick: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
