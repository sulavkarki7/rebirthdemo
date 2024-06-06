import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

class SyllabusPage extends StatelessWidget {
  const SyllabusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Syllabus',
          style: appbarTitleStyle,
        ),
      ),
      body: Text('Syllabus Page'),
    );
  }
}
