import 'package:college_app/constants.dart';
import 'package:flutter/material.dart';

class AssignmentListview extends StatelessWidget {
  const AssignmentListview({
    super.key,
    required this.timetable,
  });

  final List<Map<String, String>> timetable;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Group timetable entries by day
        for (var day in [
          'Sunday',
          'Monday',
          'Tuesday',
          'Wednesday',
          'Thursday'
        ])
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                day,
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 11, 46, 107),
                ),
              ),
              const SizedBox(height: 10.0),
              // Filter timetable by the current day
              ...timetable.where((item) => item['day'] == day).map((item) {
                return Card(
                  color: kPrimaryColor,
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    leading: const Icon(
                      Icons.access_time,
                      color: kTextColor,
                    ),
                    title: Text(
                      item['subject'] ?? 'Unknown',
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '${item['time']}',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    onTap: () {
                      // You can handle the tap here for more info about the class
                    },
                  ),
                );
              }),
            ],
          ),
      ],
    );
  }
}
