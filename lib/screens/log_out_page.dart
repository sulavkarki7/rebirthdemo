import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

class LogOutPage extends StatelessWidget {
  const LogOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Log Out',
          style: appbarTitleStyle,
        ),
      ),
      body: Text('Log Out Page'),
    );
  }
}
