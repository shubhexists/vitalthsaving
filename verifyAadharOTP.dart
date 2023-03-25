// ignore_for_file: file_names, non_constant_identifier_names, use_build_context_synchronously
import 'package:abdm_sandbox_integration/Screens/NewAccountScreen/aadhaarPage/checkMobileNumber.dart';
import 'package:abdm_sandbox_integration/Screens/NewAccountScreen/aadhaarPage/models/aadharModel.dart';
import 'package:flutter/material.dart';

class VerifyAadhaarOTP extends StatelessWidget {
  const VerifyAadhaarOTP({super.key});

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
                await verifyAadhaarOTP(int.parse(OTPcontroller.text));
                if (txnID_afterOTP == txnID_afterOTP_Verified) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const CheckMobileNo()));
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
