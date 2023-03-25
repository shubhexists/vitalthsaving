// ignore_for_file: file_names, must_be_immutable, prefer_typing_uninitialized_variables
import 'package:abdm_sandbox_integration/Screens/LoginScreen/loginScreen.dart';
import 'package:abdm_sandbox_integration/Screens/NewAccountScreen/newAccountScreen.dart';
import 'package:abdm_sandbox_integration/Screens/ORScreen/qrScreen.dart';
import 'package:abdm_sandbox_integration/Screens/SearchScreen/searchScreen.dart';
import 'package:flutter/material.dart';

class TokenScreen extends StatelessWidget {
  var token;
  TokenScreen({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('Access Token'),
        Text(token),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            child: const Text('Login existing account')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const newAccountScreen()));
            },
            child: const Text('Get New Health ID')),
        ElevatedButton(
          child: const Text('Search For Profiles'),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const SearchScreen()));
          },
        ),
      ],
    ));
  }
}
