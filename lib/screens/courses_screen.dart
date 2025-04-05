import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Courses')),
      body: Center(
        child: Text('List of Registered Courses'),
      ),
    );
  }
}
