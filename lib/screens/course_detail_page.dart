import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebirthdemo/components/my_Tab_bar.dart';

import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/components/course_list.dart';

class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({
    super.key,
  });

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    List<Course> courses = getCourse();
    return Scaffold(
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
        ],
      ),
    );
  }
}
