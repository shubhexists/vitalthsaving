// ignore_for_file: file_names, camel_case_types
import 'package:abdm_sandbox_integration/Screens/SearchScreen/models/searchModels.dart';
import 'package:flutter/material.dart';

class searchMobileNumber extends StatelessWidget {
  const searchMobileNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ElevatedButton(
            onPressed: () {
              searchbyMobileNumber();
            },
            child: const Text("Search"))
      ],
    ));
  }
}
