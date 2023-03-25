// ignore_for_file: file_names
import 'package:abdm_sandbox_integration/Screens/NewAccountScreen/aadhaarPage/sendOTPPage.dart';
import 'package:flutter/material.dart';

class AadhaarPage extends StatelessWidget {
  const AadhaarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Current trial Aadhaar Number is 819939532213'),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const OTPPageAadhar()));
              },
              child: const Text('Proceed'))
        ],
      ),
    );
  }
}
