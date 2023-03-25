// ignore_for_file: file_names
import 'package:abdm_sandbox_integration/Screens/NewAccountScreen/aadhaarPage/models/aadharModel.dart';
import 'package:flutter/material.dart';

class CreateAbhaNumberPage extends StatelessWidget {
  const CreateAbhaNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('Create Abha Number'),
        ElevatedButton(
            onPressed: () async {
              await createAbhaNumber();
            },
            child: const Text('Click Here'))
      ],
    ));
  }
}
