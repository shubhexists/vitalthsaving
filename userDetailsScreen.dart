// ignore_for_file: file_names
import 'package:abdm_sandbox_integration/Screens/ORScreen/qrScreen.dart';
import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('QR Code'),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const QRScreen()));
            },
          )
        ],
      ),
    );
  }
}
