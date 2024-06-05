import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/cart_page.dart';
import 'package:rebirthdemo/screens/course_page.dart';
import 'package:rebirthdemo/screens/homenav_page.dart';
import 'package:rebirthdemo/screens/mcq_page.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All News'),
      ),
      body: Text('Newssss'),
      //
    );
  }
}
