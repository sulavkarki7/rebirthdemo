import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy Policy',
          style: appbarTitleStyle,
        ),
      ),
      body: Text('Privacy Policy Page'),
    );
  }
}
