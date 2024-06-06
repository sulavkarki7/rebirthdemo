import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

class McqPage extends StatefulWidget {
  const McqPage({super.key});

  @override
  State<McqPage> createState() => _McqPageState();
}

class _McqPageState extends State<McqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All MCQs',
          style: appbarTitleStyle,
        ),
      ),
      body: Text('MCQssss'),
    );
  }
}
