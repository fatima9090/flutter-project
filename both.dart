import 'package:flutter/material.dart';
import 'package:flutter_application_1/button.dart';
import 'package:flutter_application_1/name.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: MyFile3(),
    );
  }
}

class MyFile3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyFile1 file1 = MyFile1();
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              file1.name,
              style: TextStyle(
                color: Colors.white,
              ), // Change text color to white
            ),
            SizedBox(height: 20), // Add space between name and button
            MyFile2(),
          ],
        ),
      ),
    );
  }
}
