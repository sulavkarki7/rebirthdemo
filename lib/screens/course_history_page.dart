import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

class CourseHistoryPage extends StatelessWidget {
  const CourseHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Course History',
          style: appbarTitleStyle,
        ),
      ),
      body: Text('Course History Page'),
    );
  }
}
