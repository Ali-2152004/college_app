import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart'; // Import QR package

class QRCodeScreen extends StatelessWidget {
  final String studentData =
      'Name: Ali Ahmad\nGPA: 3.8\nDepartment: Information Technology\nID: 220243';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100], // Set background color to dark blue
      appBar: AppBar(
        title: Text(
          'Your QR Code',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Scan the QR Code for attendence:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.2),
                    blurRadius: 15.0,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: QrImageView(
                data: studentData, // The data embedded in the QR code
                size: 200.0, // Adjust QR code size
                backgroundColor: Colors.white60,
              ),
            ),
            SizedBox(height: 20.0),
            Image.asset(
              'lib/images/QR Code-rafiki.png',
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
