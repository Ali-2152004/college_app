import 'package:college_app/constants.dart';
import 'package:college_app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class Course {
  final String name;
  final String code;
  final int creditHours;

  Course({
    required this.name,
    required this.code,
    required this.creditHours,
  });
}

class CoursesScreen extends StatelessWidget {
  CoursesScreen({super.key});

  final List<Course> courses = [
    Course(name: 'Mobile Development', code: 'CS-430', creditHours: 3),
    Course(name: 'Data Structures', code: 'CS-201', creditHours: 3),
    Course(name: 'Introduction to MM', code: 'CS-301', creditHours: 3),
    Course(name: 'Database Systems', code: 'CS-320', creditHours: 3),
    Course(name: 'Technical writing', code: 'HU-350', creditHours: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscreenColor,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomAppBar(title: 'Courses'),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  final course = courses[index];
                  return Card(
                    elevation: 2,
                    color: kPrimaryColor,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      leading: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: kscreenColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          course.code,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                          ),
                        ),
                      ),
                      title: Text(
                        course.name,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: kTextColor),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${course.creditHours} hrs',
                            style: TextStyle(
                              fontSize: 14,
                              color: kTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Icon(
                            Icons.access_time,
                            size: 20,
                            color: Colors.indigo[800],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
