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
      title: 'First_App project',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: MyHomePageclass(),
    );
  }
}

class MyHomePageclass extends StatelessWidget {
  const MyHomePageclass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 87, 136, 199),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Hello Dear !!! If U want To explore this App Press Yess or No',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(150, 50)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDrawer()),
                );
              },
              child: Text(
                'Yes.😀 Lets Gooooooooo',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(150, 50)),
              onPressed: () {},
              child: Text(
                'That is very Bad ! u want to press NO🙄',
                style: TextStyle(color: const Color.fromARGB(255, 134, 12, 4)),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
