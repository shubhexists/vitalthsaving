// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, use_build_context_synchronously
import 'package:abdm_sandbox_integration/Screens/LoginScreen/models/loginModel.dart';
import 'package:abdm_sandbox_integration/Screens/UserDetailsScreen/userDetailsScreen.dart';
import 'package:flutter/material.dart';

class verifyMobileOTP extends StatelessWidget {
  const verifyMobileOTP({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController OTPcontroller = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          const Text('Enter OTP'),
          TextField(
            controller: OTPcontroller,
            decoration: const InputDecoration(
              hintText: 'Enter OTP',
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                // print(int.parse(OTPcontroller.text));
                var token =
                    await verifyLoginMobileOTP(int.parse(OTPcontroller.text));
                if (token != null) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const UserDetailsScreen()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('OTP Verification Failed'),
                  ));
                }
              },
              child: const Text('Verify OTP'))
        ],
      ),
    );
  }
}
