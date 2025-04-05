import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Results')),
      body: Center(
        child: Text('List of Previous Exam Results'),
      ),
    );
  }
}
