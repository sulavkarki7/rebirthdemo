import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/components/coursecontainer_for_courses_list.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Cart',
          style: appbarTitleStyle,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.02,
          ),
          const CoursecontainerForCoursesList(),
        ],
      ),
      //
    );
  }
}
