// ignore_for_file: file_names
import 'package:abdm_sandbox_integration/Screens/SearchScreen/searchHealthID.dart';
import 'package:abdm_sandbox_integration/Screens/SearchScreen/searchMobileNumber.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('Search Screen'),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const searchHealthID()));
            },
            child: const Text('Search by HealthID Number')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const searchMobileNumber()));
            },
            child: const Text('Search by Mobile Number'))
      ],
    ));
  }
}
