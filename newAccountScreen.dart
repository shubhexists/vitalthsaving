// ignore_for_file: file_names, camel_case_types
import 'package:abdm_sandbox_integration/Screens/NewAccountScreen/aadhaarPage/aadhaarPage.dart';
import 'package:flutter/material.dart';

class newAccountScreen extends StatelessWidget {
  const newAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const AadhaarPage()));
            },
            child: const Text('Register via Aadhar')),
        ElevatedButton(
            onPressed: () {}, child: const Text('Register via Mobile Number')),
      ],
    ));
  }
}
