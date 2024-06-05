import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/cart_page.dart';
import 'package:rebirthdemo/screens/homenav_page.dart';
import 'package:rebirthdemo/screens/mcq_page.dart';
import 'package:rebirthdemo/screens/news_page.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Courses'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                focusColor: Colors.green[100],
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.blue[900],
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ),
          Text('Hellppppp')
        ],
      ),
    );
  }
}
