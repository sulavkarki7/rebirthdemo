import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

class AssignmentPage extends StatelessWidget {
  const AssignmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Assgnment ',
          style: appbarTitleStyle,
        ),
      ),
      body: Text('Assignment Page'),
    );
  }
}
