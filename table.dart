import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Table',
      debugShowCheckedModeBanner: false,
      home: const MyTable(),
    );
  }
}

class MyTable extends StatefulWidget {
  const MyTable({super.key});

  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  List<Student> students = [
    Student(
      rollNo: 1,
      name: 'John Doe',
      program: 'BS Computer Science',
      percentage: '95%',
      grade: 'A+',
    ),
    Student(
      rollNo: 2,
      name: 'Jane Doe',
      program: 'BS Computer Science',
      percentage: '80%',
      grade: 'A',
    ),
    Student(
      rollNo: 3,
      name: 'Bob Smith',
      program: 'BS Computer Science',
      percentage: '75%',
      grade: 'B',
    ),
    Student(
      rollNo: 4,
      name: 'Alice Johnson',
      program: 'BS Computer Science',
      percentage: '85%',
      grade: 'A',
    ),
    Student(
      rollNo: 5,
      name: 'Mike Brown',
      program: 'BS Computer Science',
      percentage: '60%',
      grade: 'C',
    ),
  ];

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
        backgroundColor: Colors.indigo,
        title: Center(
          child: Text(
            'Student Data',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.only(top: 0.1),
        child: Center(
          child: DataTable(
            columnSpacing: 110,
            columns: [
              DataColumn(
                label: Text(
                  'Roll No',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Student Name',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Program',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Percentage%',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Grade',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
            ],
            rows:
                students
                    .map(
                      (student) => DataRow(
                        cells: [
                          DataCell(
                            Text(
                              '${student.rollNo}',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              student.name,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              student.program,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              student.percentage,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              student.grade,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
          ),
        ),
      ),
    );
  }
}

class Student {
  int rollNo;
  String name;
  String program;
  String percentage;
  String grade;

  Student({
    required this.rollNo,
    required this.name,
    required this.program,
    required this.percentage,
    required this.grade,
  });
}
