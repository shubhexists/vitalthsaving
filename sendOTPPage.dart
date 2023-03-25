// ignore_for_file: file_names, use_build_context_synchronously
import 'package:abdm_sandbox_integration/Screens/NewAccountScreen/aadhaarPage/models/aadharModel.dart';
import 'package:abdm_sandbox_integration/Screens/NewAccountScreen/aadhaarPage/verifyAadharOTP.dart';
import 'package:flutter/material.dart';

class OTPPageAadhar extends StatelessWidget {
  const OTPPageAadhar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          child: const Text('Send Otp'),
          onPressed: () async {
            await sendAadhaarOTP();
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const VerifyAadhaarOTP()));
          }),
    );
  }
}
