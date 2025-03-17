import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.indigoAccent, // Add this line
      ),
      debugShowCheckedModeBanner: false,

      home: const MyFile2(),
    );
  }
}

class MyFile2 extends StatelessWidget {
  const MyFile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyFile3()),
          );
        },
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Button',
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class MyFile3 extends StatelessWidget {
  const MyFile3({super.key});

  @override
  Widget build(BuildContext context) {
    // Add your widget here
    return Scaffold(body: Center(child: Text('MyFile3')));
  }
}
