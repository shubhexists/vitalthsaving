// ignore_for_file: file_names, use_build_context_synchronously
import 'package:abdm_sandbox_integration/Screens/LoginScreen/models/loginModel.dart';
import 'package:abdm_sandbox_integration/Screens/LoginScreen/verifyAadhaarOTP.dart';
import 'package:abdm_sandbox_integration/Screens/LoginScreen/verifyMobileOTP.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Login Screen'),
          ElevatedButton(
              onPressed: () async {
                await loginUsingAadhaarOTP();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const verifyAadhaarOTP()));
              },
              child: const Text('Login using Aadhaar OTP')),
          ElevatedButton(
            onPressed: () async {
              await loginUsingMobileOTP();
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const verifyMobileOTP()));
            },
            child: const Text('Login using Mobile OTP'),
          )
        ],
      ),
    );
  }
}
