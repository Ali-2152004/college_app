import 'package:college_app/constants.dart';
import 'package:college_app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  // Example event data
  final List<Map<String, String>> events = [
    {
      'title': 'Science Fair',
      'date': '2025-04-15',
      'description': 'Explore the latest innovations in science and technology.'
    },
    {
      'title': 'Football Tournament',
      'date': '2025-04-20',
      'description': 'Join the college football competition for fun and prizes.'
    },
    {
      'title': 'Hackathon',
      'date': '2025-04-25',
      'description':
          'Participate in a coding marathon and showcase your skills.'
    },
    {
      'title': 'Career Fair',
      'date': '2025-05-05',
      'description':
          'Meet potential employers and explore internship opportunities.'
    },
  ];

  EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscreenColor,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CustomAppBar(title: 'Upcoming Events'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final event = events[index];
                  return Card(
                    color: kPrimaryColor,
                    elevation: 4.0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16.0),
                      title: Text(
                        event['title'] ?? 'No Title',
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: kTextColor,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8.0),
                          Text(
                            'Date: ${event['date'] ?? 'No Date'}',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            'Description: ${event['description'] ?? 'No Description'}',
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
