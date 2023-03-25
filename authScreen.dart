// ignore_for_file: file_names, use_build_context_synchronously
import 'package:abdm_sandbox_integration/Screens/AuthScreen/models/authModel.dart';
import 'package:abdm_sandbox_integration/Screens/AuthScreen/tokenScreen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late String accessToken;
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Center(
            child: Text('Auth Screen'),
          ),
          ElevatedButton(
              onPressed: () async {
                accessToken = await auth();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => TokenScreen(
                          token: accessToken,
                        )));
              },
              child: const Text('Get Access Token'))
        ],
      ),
    );
  }
}
