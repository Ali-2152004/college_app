import 'package:college_app/screens/event_details.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Upcoming Events',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];
            return Card(
              elevation: 4.0,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16.0),
                title: Text(
                  event['title'] ?? 'No Title',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0),
                    Text(
                      'Date: ${event['date'] ?? 'No Date'}',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'Description: ${event['description'] ?? 'No Description'}',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                leading: Icon(
                  Icons.event,
                  color: Colors.blueAccent,
                  size: 30.0,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[600],
                  size: 18.0,
                ),
                onTap: () {
                  // Push the EventDetailsScreen when an event is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventDetailsScreen(
                        title: event['title'] ?? 'Unknown Event',
                        date: event['date'] ?? 'Unknown Date',
                        description: event['description'] ?? 'No Description',
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
