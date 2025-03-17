// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Calculator',
      home: MyCalculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  double _result = 0;

  void _performOperation(String operation) {
    try {
      double num1 = double.parse(_textController1.text);
      double num2 = double.parse(_textController2.text);
      switch (operation) {
        case '+':
          _result = num1 + num2;
          break;
        case '-':
          _result = num1 - num2;
          break;
        case '*':
          _result = num1 * num2;
          break;
        case '/':
          if (num2 != 0) {
            _result = num1 / num2;
          } else {
            print('Error: Division by zero');
          }
          break;
        case '%':
          if (num2 != 0) {
            _result = num1 % num2;
          } else {
            print('Error: Modulus by zero');
          }
          break;
      }
      setState(() {});
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: Icon(Icons.menu, color: Colors.white, size: 34),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
        ),
        backgroundColor: Colors.indigo,
        title: Center(
          child: Text(
            'Mini Calculator',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter First Number',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              style: TextStyle(fontSize: 24, color: Colors.white),
              controller: _textController1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.black,
                filled: true,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Enter Second Number',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              style: TextStyle(fontSize: 24, color: Colors.white),
              controller: _textController2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.black,
                filled: true,
              ),
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () => _performOperation('+'),
                  child: Transform.scale(
                    scale: 1.5,
                    child: Text('+', style: TextStyle(color: Colors.white)),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () => _performOperation('-'),
                  child: Transform.scale(
                    scale: 1.5,
                    child: Text('-', style: TextStyle(color: Colors.white)),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () => _performOperation('*'),
                  child: Transform.scale(
                    scale: 1.5,
                    child: Text('*', style: TextStyle(color: Colors.white)),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () => _performOperation('/'),
                  child: Text('/', style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () => _performOperation('%'),
                  child: Text('%', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 100),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Result: $_result',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      backgroundColor: Colors.black,
                    ),
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
