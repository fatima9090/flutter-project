import 'package:flutter/material.dart';
import 'package:flutter_application_1/rec.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Send Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SendData(),
    );
  }
}

class SendData extends StatefulWidget {
  const SendData({super.key});

  @override
  SendDataState createState() => SendDataState();
}

class SendDataState extends State<SendData> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _cellNumberController = TextEditingController();
  bool _isActive = false;
  BuildContext? _context;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _context = context;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Send Data',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                ),
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                ),
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                ),
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _cellNumberController,
                decoration: const InputDecoration(
                  labelText: 'Cell Number',
                  labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                ),
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text(
                    'Active:',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  Switch(
                    value: _isActive,
                    onChanged: (bool value) {
                      setState(() {
                        _isActive = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    iconColor: Colors.grey, textStyle: const TextStyle(fontSize: 24)),
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('username', _usernameController.text);
                  await prefs.setString('password', _passwordController.text);
                  await prefs.setString('email', _emailController.text);
                  await prefs.setString('cellNumber', _cellNumberController.text);
                  await prefs.setBool('isActive', _isActive);
                  Navigator.push(
                    _context!,
                    MaterialPageRoute(builder: (context) => const ReceiveData()),
                  );
                },
                child: const Text('Send Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}