import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebirthdemo/components/my_Tab_bar.dart';

import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/components/course_list.dart';
import 'package:rebirthdemo/screens/cart_page.dart';

class CourseDetailPage extends StatefulWidget {
  CourseDetailPage({
    super.key,
  });

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    List<Course> courses = getCourse();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                size: 20, color: Colors.black), // Your custom icon
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            'Course Detail',
            style: appbarTitleStyle,
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: Get.height * 0.01,
            ),
            courses[0].courseImage,
            ListTile(
              title: Text(
                courses[0].courseFirstTitle,
                style: topicStyle,
              ),
              trailing: const Icon(Icons.favorite_border),
            ),
            const MyTabBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 36, vertical: 18),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF2B3C98),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'ENROLL NOW',
                    style: whiteColor,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 36, vertical: 18),
                    side: const BorderSide(color: Color(0xFF2B3C98), width: 1),
                    foregroundColor: const Color(0xFF2B3C98),
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CartPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'ADD TO CART',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
