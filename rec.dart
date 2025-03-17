import 'package:flutter/material.dart';
import 'package:flutter_application_1/show.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReceiveData extends StatefulWidget {
  const ReceiveData({super.key});

  @override
  ReceiveDataState createState() => ReceiveDataState();
}

class ReceiveDataState extends State<ReceiveData> {
  String _storedData = '';

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _storedData = prefs.getString('myData') ?? '';
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Receive Data',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
        ),
        child: Center(
          child: Text(
            _storedData,
            style: const TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ShowData(data: _storedData)),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.arrow_forward, size: 36),
      ),
    );
  }
}
