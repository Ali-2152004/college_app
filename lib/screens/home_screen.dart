import 'package:college_app/constants.dart';
import 'package:college_app/screens/courses.dart';
import 'package:college_app/screens/login_screen.dart';
import 'package:college_app/screens/results.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'timetable_screen.dart';
import 'assignments_screen.dart';
import 'events_screen.dart';
import 'profile_screen.dart';
import 'qr_code_screen.dart';
import '../widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  const HomeScreen({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscreenColor,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/studentProfile.jpeg'),
                    radius: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ali Ahmad',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text('Dark/Light Mode'),
              onTap: toggleTheme,
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text(
                'Logout',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(toggleTheme: toggleTheme),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Builder(
        builder: (context) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage('images/aliprofile.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Welcome back \n Ali Ahmad !',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff182454)),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  IconButton(
                    icon: const Icon(Icons.menu, size: 40),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ],
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 700,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 50.0,
                  mainAxisSpacing: 15.0,
                  children: [
                    CategoryCard(
                      title: 'Timetable',
                      imagePath: 'images/schedule.png',
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
                      imagePath: 'images/assignment.png',
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
                      imagePath: 'images/calendar.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EventsScreen()),
                        );
                      },
                    ),
                    CategoryCard(
                      title: 'QR Code',
                      imagePath: 'images/qr.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QRCodeScreen()),
                        );
                      },
                    ),
                    CategoryCard(
                      title: 'Results',
                      imagePath: 'images/evaluation.png',
                      onTap: () {
                        // Replace with real screen later
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResultsScreen()),
                        );
                      },
                    ),
                    CategoryCard(
                      title: 'Courses',
                      imagePath: 'images/online-learning.png',
                      onTap: () {
                        // Replace with real screen later
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
