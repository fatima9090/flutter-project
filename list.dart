import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Names',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: NameList(),
    );
  }
}

class NameList extends StatefulWidget {
  const NameList({super.key});
  @override
  _NameListState createState() => _NameListState();
}

class _NameListState extends State<NameList> {
  List<String> names = ["Fatima", "Zulfiqar", "Ali", "Ahmed", "Hassan"];
  int currentIndex = 0;

  void showNextName() {
    setState(() {
      if (currentIndex < names.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(names[currentIndex], style: const TextStyle(fontSize: 28)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: showNextName,
              child: const Text(
                'Show Next Name',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
