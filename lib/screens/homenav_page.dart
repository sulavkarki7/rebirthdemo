import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/components/course_list.dart';
import 'package:rebirthdemo/components/mcq_list.dart';
import 'package:rebirthdemo/components/news_list.dart';
import 'package:rebirthdemo/screens/course_page.dart';
import 'package:rebirthdemo/screens/profile_page.dart';

class HomenavPage extends StatefulWidget {
  const HomenavPage({super.key});

  @override
  State<HomenavPage> createState() => _HomenavPageState();
}

class _HomenavPageState extends State<HomenavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 75,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            );
          },
          icon: const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/pp.jpg'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePage(autoFocusSearch: true),
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi User',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
            ),
            Text('Good Afternoon',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15))
          ],
        ),

        backgroundColor: const Color(0xFF2B3C98),
        foregroundColor: Colors.white,
        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(100.0),
        //   child: Container(
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //       color: const Color(0xFF2B3C98),
        //       borderRadius: BorderRadius.only(
        //           bottomLeft: Radius.circular(30),
        //           bottomRight: Radius.circular(30)),
        //     ),
        //     child: Text('data', style: TextStyle(color: Colors.white)),
        //   ),
        // )
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Featured Courses',
                style: topicStyle,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              color: Colors.white,
              height: Get.height * 0.244,
              width: double.infinity,
              child: const CourseList(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'MCQS',
                style: topicStyle,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              color: Colors.white,
              height: Get.height * 0.203,
              width: double.infinity,
              child: const McqList(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'News',
                style: topicStyle,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              color: Colors.white,
              height: Get.height * 0.3,
              width: double.infinity,
              child: const NewsList(),
            ),
          ],
        ),
      ),
    );
  }
}
