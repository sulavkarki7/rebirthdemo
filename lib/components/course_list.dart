import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/course_detail_page.dart';

class CourseList extends StatefulWidget {
  const CourseList({super.key});

  @override
  State<CourseList> createState() => _CourseListState();
}

class Course {
  final String courseFirstTitle;
  // final String courseSecondTitle;
  final int coursePrice;
  final int courseRating;
  final Image courseImage;
  final int courseHRDuration;
  final int courseMinDuration;

  Course({
    required this.courseFirstTitle,
    // required this.courseSecondTitle,
    required this.coursePrice,
    required this.courseRating,
    required this.courseImage,
    required this.courseHRDuration,
    required this.courseMinDuration,
  });
}

List<Course> getCourse() {
  return [
    Course(
      courseFirstTitle: 'Japanese Basic N5\nJap Ese Basic N5',
      // courseSecondTitle: 'Course 1',
      coursePrice: 500,
      courseRating: 3,
      courseImage: Image.asset('assets/images/Rectangle 11.png'),
      courseHRDuration: 1,
      courseMinDuration: 50,
    ),
    Course(
      courseFirstTitle: 'Japanese Basic N5\n  Jap Ese Basic N5',
      // courseSecondTitle: 'Course 2',
      coursePrice: 600,
      courseRating: 4,
      courseImage: Image.asset('assets/images/N5.2.png'),
      courseHRDuration: 2,
      courseMinDuration: 30,
    ),
    Course(
      courseFirstTitle: 'Japanese Culture',
      // courseSecondTitle: 'Course 3',
      coursePrice: 400,
      courseRating: 3,
      courseImage: Image.asset(
        'assets/images/N5.2.png',
        // fit: BoxFit.contain,
      ),
      courseHRDuration: 1,
      courseMinDuration: 30,
    ),
    Course(
      courseFirstTitle: 'Course 4',
      // courseSecondTitle: 'Course 4',
      coursePrice: 400,
      courseRating: 2,
      courseImage: Image.asset('assets/images/Rectangle 11.png'),
      courseHRDuration: 4,
      courseMinDuration: 30,
    ),
  ];
}

class _CourseListState extends State<CourseList> {
  List<Course> courses = getCourse();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseDetailPage(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            color: Colors.white,
            height: Get.height * 0.29,
            width: Get.width * 0.48,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                courses[index].courseImage,
                Row(
                  children: [
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    const Icon(Icons.access_time, size: 11),

                    Text(
                        '${courses[index].courseHRDuration} hr ${courses[index].courseMinDuration} min'),
                    // hr courses[index].courseMinDuration min,
                  ],
                ), // Photo
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '  ${courses[index].courseFirstTitle}',
                      style: productTitleStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    // Text(
                    //   courses[index].courseSecondTitle,
                    //   style: productTitleStyle,
                    // ),
                  ],
                ),

                // Duration
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '  Rs. ${courses[index].coursePrice}',
                      style: priceStyle,
                    ),
                    SizedBox(
                      width: Get.width * 0.08,
                    ),
                    // / Add some space between the price and the rating
                    RatingBar.builder(
                      initialRating: courses[index].courseRating.toDouble(),
                      minRating: 1,
                      direction: Axis.horizontal,
                      ignoreGestures: true,
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
                  ],
                ), // Price
              ],
            ),
          ),
        );
      },
    );
  }
}
