import 'package:college_app/constants.dart';
import 'package:college_app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:qr_flutter/qr_flutter.dart'; // Import QR package

class QRCodeScreen extends StatelessWidget {
  final String studentData =
      'Name: Ali Ahmad\nGPA: 3.8\nDepartment: Information Technology\nID: 220243';

  const QRCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscreenColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          CustomAppBar(title: 'Your QR code'),
          Container(
            width: 364,
            height: 447,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                const Text(
                  'Scan the QR Code for attendence:',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1E3A8C)),
                ),
                const SizedBox(height: 40.0),
                Container(
                  padding: const EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: SizedBox(
                    height: 267,
                    child: PrettyQrView.data(
                        data: studentData,
                        decoration: PrettyQrDecoration(
                            shape: PrettyQrSmoothSymbol(
                          color: Color(0xff182454),
                        ))),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
