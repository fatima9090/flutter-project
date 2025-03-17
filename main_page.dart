import 'package:flutter/material.dart';
import 'package:flutter_application_1/page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: DisplayScreen(),
    );
  }
}

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  DisplayScreenState createState() => DisplayScreenState();
}

class DisplayScreenState extends State<DisplayScreen> {
  String _email = '';
  String _password = '';
  String _cellNumber = '';
  String _loginStatus = '';

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _email = prefs.getString('email') ?? '';
      _password = prefs.getString('password') ?? '';
      _cellNumber = prefs.getString('cellNumber') ?? '';
      _loginStatus = prefs.getString('loginStatus') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Display Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Email: $_email'),
            Text('Password: $_password'),
            Text('Cell Number: $_cellNumber'),
            Text('Login Status: $_loginStatus'),
            SizedBox(height: 16),
            Text('Data has been retrieved from Shared Preferences'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
