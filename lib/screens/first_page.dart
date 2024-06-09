import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rebirthdemo/components/constants.dart';

import 'package:rebirthdemo/components/course_list.dart';
import 'package:rebirthdemo/components/mcq_list.dart';
import 'package:rebirthdemo/components/news_list.dart';
import 'package:rebirthdemo/screens/cart_page.dart';
import 'package:rebirthdemo/screens/course_page.dart';
import 'package:rebirthdemo/screens/homenav_page.dart';
import 'package:rebirthdemo/screens/mcq_page.dart';
import 'package:rebirthdemo/screens/news_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomenavPage(),
    const CoursePage(),
    const NewsPage(),
    const McqPage(),
    const CartPage(),
    // Add other pages here
  ];

  // s
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _children.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'MCQS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        selectedItemColor: const Color(0xFF2B3C98),
        unselectedItemColor: const Color(0xFF777777),
        selectedLabelStyle: navtxtStyle,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
