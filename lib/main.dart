import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NurseryScreen(),
    );
  }
}

class NurseryScreen extends StatelessWidget {
  final List<Student> students = [
    Student(name: 'นักเรียน 1', detail: 'สมบูรณ์ ใจดี\n081-7894561'),
    Student(name: 'นักเรียน 2', detail: 'นาริ ใจดี\n081-7894562'),
    Student(name: 'นักเรียน 3', detail: 'นงลักษณ์ รักทอง\n081-7894563'),
    Student(name: 'นักเรียน 4', detail: 'ผการ้อง แป้นป้อม\n081-7894564'),
    Student(name: 'นักเรียน 5', detail: 'ต้ม สงครามสุข\n081-7894565'),
    Student(name: 'นักเรียน 6', detail: 'นงลักษณ์ บุญค้ำ\n081-7894566'),
    Student(name: 'นักเรียน 7', detail: 'รักษา หวานใจ\n081-7894567'),
    Student(name: 'นักเรียน 8', detail: 'รักษ์ ป่าไม้\n081-7894568'),
    Student(name: 'นักเรียน 9', detail: 'ทองแท้ พานทอง\n081-7894569'),
    Student(name: 'นักเรียน 10', detail: 'นักเรียน 10\n081-7894570'),
    Student(name: 'นักเรียน 11', detail: 'นักเรียน 11\n081-7894571'),
    Student(name: 'นักเรียน 12', detail: 'นักเรียน 12\n081-7894572'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Japan Nursery App.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.75,
          ),
          itemCount: students.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/student.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      students[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 4),
                    Text(
                      students[index].detail,
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Student {
  final String name;
  final String detail;

  Student({required this.name, required this.detail});
}
