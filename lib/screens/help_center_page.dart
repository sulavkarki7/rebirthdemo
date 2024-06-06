import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help Center',
          style: appbarTitleStyle,
        ),
      ),
      body: Text('Help Center Page'),
    );
  }
}
