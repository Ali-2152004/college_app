import 'package:flutter/material.dart';
import 'timetable_screen.dart';
import 'assignments_screen.dart';
import 'events_screen.dart';
import 'profile_screen.dart';
import 'qr_code_screen.dart';
import '../widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Welcome back !,\n Ali Ahmad',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('lib/images/aliprofile.jpg'),
                  ),
                ),
              ],
            ),
            Container(
              height: 400,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 50.0,
                mainAxisSpacing: 15.0,
                children: <Widget>[
                  CategoryCard(
                    title: 'Timetable',
                    icon: Icons.schedule,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TimetableScreen()),
                      );
                    },
                  ),
                  CategoryCard(
                    title: 'Assignments',
                    icon: Icons.assignment,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AssignmentsScreen()),
                      );
                    },
                  ),
                  CategoryCard(
                    title: 'Events',
                    icon: Icons.event,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EventsScreen()),
                      );
                    },
                  ),
                  CategoryCard(
                    title: 'QR Code',
                    icon: Icons.qr_code,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QRCodeScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
            Image.asset(
              'lib/images/image 3.png',
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
