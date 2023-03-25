// ignore_for_file: file_names, camel_case_types, must_be_immutable, avoid_print, unrelated_type_equality_checks
import 'package:abdm_sandbox_integration/Screens/NewAccountScreen/aadhaarPage/createAbhaNumber.dart';
import 'package:flutter/material.dart';

class isMobileNumberLinkedPage extends StatelessWidget {
  List details;
  isMobileNumberLinkedPage({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Txn Id is"),
          Text(details[0].toString()),
          const Text("Link Status is"),
          Text(details[1].toString()),
          ElevatedButton(
              onPressed: () {
                (details[1] == true)
                    ? Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const CreateAbhaNumberPage()))
                    : print("Mobile Number is not linked");
              },
              child: const Text("Proceed"))
        ],
      ),
    );
  }
}
