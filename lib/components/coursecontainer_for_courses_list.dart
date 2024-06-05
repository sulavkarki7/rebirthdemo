import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rebirthdemo/components/constants.dart';

class CoursecontainerForCoursesList extends StatefulWidget {
  const CoursecontainerForCoursesList({
    super.key,
  });

  @override
  State<CoursecontainerForCoursesList> createState() =>
      _CoursecontainerForCoursesListState();
}

class Course {
  final String courseFirstTitle;

  final int coursePrice;
  final int courseRating;
  final Image courseImage;
  final int courseHRDuration;
  final int courseMinDuration;

  Course({
    required this.courseFirstTitle,
    required this.coursePrice,
    required this.courseRating,
    required this.courseImage,
    required this.courseHRDuration,
    required this.courseMinDuration,
  });
}

List<Course> getCourses() {
  return [
    Course(
        courseFirstTitle: 'Welcoming the New Year with joy and hope',
        coursePrice: 500,
        courseRating: 4,
        courseImage: Image.asset(
          'assets/images/44.png',
          fit: BoxFit.fill,
        ),
        courseHRDuration: 1,
        courseMinDuration: 50),
    Course(
        courseFirstTitle: 'Welcoming the New Year with joy and hope',
        coursePrice: 100,
        courseRating: 5,
        courseImage: Image.asset('assets/images/33.png'),
        courseHRDuration: 1,
        courseMinDuration: 20),
    Course(
        courseFirstTitle: 'Welcoming the New Year with joy and hope',
        coursePrice: 100,
        courseRating: 5,
        courseImage: Image.asset('assets/images/44.png'),
        courseHRDuration: 2,
        courseMinDuration: 10),
  ];
}

class _CoursecontainerForCoursesListState
    extends State<CoursecontainerForCoursesList> {
  List<Course> courses = getCourses();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: courses.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => Container(
        color: Colors.white,
        // height: Get.height * 0.1,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: Get.height * 0.15,
                width: Get.width * 0.3,
                child: courses[index].courseImage),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    const Icon(Icons.access_time, size: 11),
                    Text(
                      ' ${courses[index].courseHRDuration} hr ${courses[index].courseMinDuration} min',
                      style: durationStyle,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    width: Get.width * 0.5,
                    child: Text(
                      '${courses[index].courseFirstTitle}',
                      style: productTitleStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RatingBar.builder(
                    initialRating: courses[index].courseRating.toDouble(),
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15, // Adjust the size of the stars
                    itemPadding: const EdgeInsets.symmetric(horizontal: 0.1),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      // log('Rating is: $rating');
                    },
                  ),
                ),

                // Duration
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Rs. ${courses[index].coursePrice}',
                    style: priceStyle,
                  ),
                ),
              ],
            ), // Photo
            // Price
          ],
        ),
      ),
    );
  }
}
