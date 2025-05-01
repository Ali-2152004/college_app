import 'package:college_app/constants.dart';
import 'package:college_app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssignmentsScreen extends StatelessWidget {
  // Example assignments data
  final List<Map<String, String>> assignments = [
    {
      'title': 'Math Assignment 1',
      'dueDate': '2025-04-10',
      'description': 'Solve the algebra problems from chapter 5.'
    },
    {
      'title': 'Physics Assignment 2',
      'dueDate': '2025-04-12',
      'description': 'Complete the lab report on projectile motion.'
    },
    {
      'title': 'Computer Science Assignment 3',
      'dueDate': '2025-04-15',
      'description': 'Build a simple mobile app using Flutter.'
    },
    {
      'title': 'Chemistry Assignment 4',
      'dueDate': '2025-04-20',
      'description': 'Write an essay on chemical bonding.'
    },
  ];

  AssignmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscreenColor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(title: 'Assignments'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                itemCount: assignments.length,
                itemBuilder: (context, index) {
                  final assignment = assignments[index];
                  return Card(
                      color: kPrimaryColor,
                      elevation: 4.0,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: ListTile(
                          contentPadding: const EdgeInsets.all(24.0),
                          title: Text(
                            assignment['title'] ?? 'No Title',
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: kTextColor,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 8.0),
                              Text(
                                'Due Date: ${assignment['dueDate'] ?? 'No Date'}',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                'Description: ${assignment['description'] ?? 'No Description'}',
                                style: const TextStyle(
                                    fontSize: 12.0,
                                    color: kTextColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          trailing: SvgPicture.asset(
                            'images/assingmentIcon.svg',
                          )));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
