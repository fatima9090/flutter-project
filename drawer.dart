import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculator.dart';
import 'package:flutter_application_1/first_app.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/table.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: Icon(Icons.menu, color: Colors.white, size: 34),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
        ),
        title: Center(
          child: Text(
            '👈👈🤏There is the drawer press it!',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Center(child: Image.asset('assets/images/cat.jpeg', scale: 3)),
      drawer: Drawer(
        backgroundColor: Colors.white54,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Fatima'),
              accountEmail: Text('fatima@gmail.com'),
              currentAccountPicture: Image.asset(
                'assets/images/l.png',
                height: 100,
                width: 100,
              ),
            ),
            Divider(thickness: 9, color: Colors.grey),
            ListTile(
              title: Text('Home page', style: TextStyle(fontSize: 26)),
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => MyHomeClass()));
              },
              leading: Icon(Icons.home),
            ),
            Divider(thickness: 9, color: Colors.grey),
            ListTile(
              title: Text('Calculator', style: TextStyle(fontSize: 26)),
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => MyCalculator()));
              },
              leading: Icon(Icons.calculate),
            ),
            Divider(thickness: 9, color: Colors.grey),
            ListTile(
              title: Text('Table', style: TextStyle(fontSize: 26)),
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => MyTable()));
              },
              leading: Icon(Icons.chat_rounded),
            ),
            Divider(thickness: 9, color: Colors.grey),
            ListTile(
              title: Text('First Page', style: TextStyle(fontSize: 26)),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyHomePageclass()),
                );
              },
              leading: Icon(Icons.chat_rounded),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ListTile(
                  title: Text(
                    'click the button u want to visit👆👆!',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.arrow_upward),
                  iconColor: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
