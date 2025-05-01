import 'package:college_app/constants.dart';
import 'package:college_app/widgets/assignment_listview.dart';
import 'package:college_app/widgets/customAppBar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TimetableScreen extends StatelessWidget {
  // Example timetable data
  final List<Map<String, String>> timetable = [
    {
      'day': 'Sunday',
      'time': '9:00 AM - 10:30 AM',
      'subject': 'Computer Networks'
    },
    {
      'day': 'Monday',
      'time': '9:00 AM - 11:00 AM',
      'subject': 'Software Development'
    },
    {
      'day': 'Monday',
      'time': '11:00 AM - 1:00 PM',
      'subject': 'Computer Networks'
    },
    {
      'day': 'Tuesday',
      'time': '9:00 AM - 11:00 AM',
      'subject': 'Intro to Multimedia'
    },
    {
      'day': 'Wednesday',
      'time': '10:00 AM - 12:00 PM',
      'subject': 'Virtual Reality'
    },
    {
      'day': 'Thursday',
      'time': '2:00 PM - 4:00 PM',
      'subject': 'Operating Systems'
    },
  ];

  TimetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscreenColor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(title: 'Timetable'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AssignmentListview(timetable: timetable),
            ),
          ),
        ],
      ),
    );
  }
}
