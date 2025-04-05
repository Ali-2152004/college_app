import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  CategoryCard({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 10.0, // Stronger shadow effect for a floating look
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              16.0), // Slightly more rounded for modern look
        ),
        color: Colors.black, // White background for the card
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(16.0), // Rounded corners for inner content
          child: Container(
            decoration: BoxDecoration(color: Colors.indigo),
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: 50.0, // Slightly larger icon
                  color: Colors.white, // White icon color for better contrast
                ),
                SizedBox(height: 16.0),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.0, // Larger font size for title
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // White text for good contrast
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
