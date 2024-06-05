import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/course_page.dart';
import 'package:rebirthdemo/screens/homenav_page.dart';
import 'package:rebirthdemo/screens/mcq_page.dart';
import 'package:rebirthdemo/screens/news_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _currentIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cartttt'),
      ),
      body: Text('Carttttt'),
      //
    );
  }
}
