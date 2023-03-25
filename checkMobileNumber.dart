// ignore_for_file: file_names, non_constant_identifier_names, use_build_context_synchronously
import 'package:abdm_sandbox_integration/Screens/NewAccountScreen/aadhaarPage/isMobileLinkedPage.dart';
import 'package:abdm_sandbox_integration/Screens/NewAccountScreen/aadhaarPage/models/aadharModel.dart';
import 'package:flutter/material.dart';

class CheckMobileNo extends StatelessWidget {
  const CheckMobileNo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          'Now Let\'s check if your mobile number is registered with us',
        ),
        ElevatedButton(
            onPressed: () async {
              var check_details = await checkMobileNumber();
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => isMobileNumberLinkedPage(
                        details: check_details,
                      )));
            },
            child: const Text('Check Mobile Number'))
      ],
    ));
  }
}
