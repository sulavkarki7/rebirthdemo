import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: appbarTitleStyle,
        ),
      ),
      body: Text('payment methods'),
    );
  }
}
