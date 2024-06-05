import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/cart_page.dart';
import 'package:rebirthdemo/screens/course_page.dart';
import 'package:rebirthdemo/screens/homenav_page.dart';
import 'package:rebirthdemo/screens/news_page.dart';

class McqPage extends StatefulWidget {
  const McqPage({super.key});

  @override
  State<McqPage> createState() => _McqPageState();
}

class _McqPageState extends State<McqPage> {
  int _currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All MCQs'),
      ),
      body: Text('MCQssss'),
    );
  }
}
