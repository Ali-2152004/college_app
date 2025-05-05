import 'package:college_app/constants.dart';
import 'package:college_app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscreenColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(title: 'Profile'),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: const Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage('images/aliprofile.jpg'),
                    ),
                  ],
                ),
                SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ali Ahmad',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 41, 112),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      '220243',
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              children: [
                profileRow('NID', '30405212200098'),
                profileRow('Department', 'Information Technology'),
                profileRow('Email', '3li.a7med.xr@gmail.com'),
                profileRow('GPA', '3.45'),
                profileRow('Semester', '6'),
                profileRow('Major', 'Information Technology'),
                profileRow('Phone', '+201015023441'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }

  Widget profileRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: Text(
              "$title :",
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: kTextColor),
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 13, color: Color(0xff1C3C85)),
          ),
        ],
      ),
    );
  }
}
