import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/components/course_content_lesson.dart';
import 'package:rebirthdemo/components/listtile_for_course_review.dart';
import 'package:rebirthdemo/screens/cart_page.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<ListtileForCourseReview> reviewlist =
        ListtileForCourseReview.getlistt();
    List<CourseContentLesson> contentList =
        CourseContentLesson.getCourseContent();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => _onTabTapped(0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: _selectedIndex == 0
                          ? const Color(0xFF2B3C98)
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Text(
                  'Content',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: _selectedIndex == 0
                        ? const Color(0xFF2B3C98)
                        : Colors.black,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onTabTapped(1),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: _selectedIndex == 1
                          ? const Color(0xFF2B3C98)
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Text(
                  'About',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: _selectedIndex == 1
                        ? const Color(0xFF2B3C98)
                        : Colors.black,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onTabTapped(2),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: _selectedIndex == 2
                          ? const Color(0xFF2B3C98)
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: _selectedIndex == 2
                        ? const Color(0xFF2B3C98)
                        : Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider(
          height: 0,
          indent: 15,
          endIndent: 15,
          color: const Color(0xFF2B3C98).withOpacity(0.4),
        ),
        IndexedStack(
          index: _selectedIndex,
          children: [
            Container(
              width: double.infinity,
              height: Get.height * 0.5,
              child: ListView.builder(
                itemCount: contentList.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return contentList[index];
                },
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 7.0),
                height: Get.height * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'About Courses',
                        style: productTitleStyle,
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                      child: Text(
                        'Unlock the captivating world of Japanese language and culture with Reiwa Nepal\'s comprehensive learning platform. Unlock the captivating world of Read more',
                        style: navtxtStyle,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Tutor',
                        style: productTitleStyle,
                      ),
                    ),
                    const ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/1.jpg'),
                      ),
                      title: Text(
                        'Master',
                        style: productTitleStyle,
                      ),
                      subtitle: Text('Japanese Tutor'),
                    ),
                  ],
                )),
            Container(
              height: Get.height * 0.5,
              child: ListView.builder(
                itemCount: reviewlist.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return reviewlist[index];
                },
              ),
            ),
          ],
        ),
        // if (_selectedIndex != 2)
        _selectedIndex != 2
            ? Row(
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
                      side:
                          const BorderSide(color: Color(0xFF2B3C98), width: 1),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              )
            : Container(
                margin: const EdgeInsets.fromLTRB(8, 0, 8, 2),
                height: Get.height * 0.08,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey[300]!)),
                child: Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18, // Adjust the size of the stars
                      itemPadding: const EdgeInsets.symmetric(horizontal: 0.1),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        // log('Rating is: $rating');
                      },
                    ),
                    SizedBox(
                      width: Get.width * 0.06,
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Write a review",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.grey),
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          fixedSize: const Size(100, 40),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 3),
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xFF2B3C98),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'ADD REVIEW',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
