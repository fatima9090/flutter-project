import 'package:flutter/material.dart';
import 'package:flutter_application_1/button.dart';

void main() {
  runApp(const MyApp());
}

class MyFile1 {
  String name = "Fatima Zulfiqar";
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
      home: const MyFile1State(),
    );
  }
}

class MyFile1State extends StatelessWidget {
  const MyFile1State({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyFile2()),
          );
        },
      ),
      body: Center(
        child: Text(
          "Fatima Zulfiqar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold, // Add this line
          ),
        ),
      ),
    );
  }
}
