import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'package:rebirthdemo/components/constants.dart';

class ListtileForCourseReview extends StatelessWidget {
  const ListtileForCourseReview(
      {super.key,
      required this.revImage,
      required this.Name,
      required this.rating,
      required this.review});
  final Image revImage;
  final String Name;
  final double rating;
  final String review;

  static List<ListtileForCourseReview> getlistt() {
    return [
      ListtileForCourseReview(
          revImage: Image.asset('assets/images/pp.png'),
          Name: 'One',
          rating: 4,
          review:
              'Course is Well Organized and Well taught. After completing this course your concepts on frontend and Backend will be cristal clear. '),
      ListtileForCourseReview(
          revImage: Image.asset('images/1.png'),
          Name: 'Two',
          rating: 3,
          review:
              'After completing this course your concepts on frontend and Backend will be cristal clear. '),
      ListtileForCourseReview(
          revImage: Image.asset('assets/images/DP.png'),
          Name: 'Three',
          rating: 2,
          review:
              'Course is Well Organized and Well taught. After completing this course your concepts on frontend and Backend will be cristal clear. '),
      ListtileForCourseReview(
          revImage: Image.asset('images/1.png'),
          Name: 'Four',
          rating: 5,
          review:
              'After completing this course your concepts on frontend and Backend will be cristal clear. '),
      ListtileForCourseReview(
          revImage: Image.asset('images/1.png'),
          Name: 'Five',
          rating: 4,
          review:
              'Course is Well Organized and Well taught. After completing this course your concepts on frontend and Backend will be cristal clear. ')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.height * 0.01,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/pp.png'),
          ),
          title: Text(
            Name,
            style: productTitleStyle,
          ),
          trailing: RatingBar.builder(
            initialRating: rating,
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
        Container(
          margin:
              EdgeInsets.fromLTRB(Get.width * 0.015, 0, Get.width * 0.007, 0),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(review)),
        )
      ],
    );
  }
}

class CourseReview {
  final String studentName;
  final int rating;
  final String review;
  final Image revImage;
  CourseReview({
    required this.revImage,
    required this.studentName,
    required this.rating,
    required this.review,
  });
}
