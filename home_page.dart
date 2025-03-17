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
      title: 'Home_page',
      debugShowCheckedModeBanner: false,
      home: MyHomeClass(),
    );
  }
}

class MyHomeClass extends StatefulWidget {
  const MyHomeClass({super.key});
  @override
  MyHomeClassState createState() => MyHomeClassState();
}

class MyHomeClassState extends State<MyHomeClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leading: Image.asset('assets/images/logo.jpg', width: 30),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => MyDrawer()),
                );
              },
              child: Icon(Icons.arrow_back),
            ),
          ],
          title: Center(
            child: Text(
              'Baba GuruNanak University',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 72, 95, 158),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20), // Add space between app bar and about
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  'About',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  'Baba Guru Nanak University (BGNU) is a Public sector university located in District Nankana Sahib, in the Punjab region of Pakistan. It plans to facilitate between 10,000 to 15,000 students from all over the world at the university. The foundation stone of the university was laid on October 28, 2019 ahead of 550th of Guru Nanak Gurpurab by the Prime Minister of Pakistan.',
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Add space between about and image
          Center(child: Image.asset('assets/images/Bgnu.jpeg', scale: 1.9)),
          SizedBox(height: 20), // Add space between image and bottom bar
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 30, 53, 117),
        child: SizedBox(
          height: 40,
          child: Center(
            child: Text(
              'Project Completed',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
