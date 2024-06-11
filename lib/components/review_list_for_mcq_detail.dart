import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:rebirthdemo/components/constants.dart';

class ReviewListForMcqDetail extends StatelessWidget {
  const ReviewListForMcqDetail(
      {super.key,
      required this.reviewImage,
      required this.reviewName,
      required this.rating,
      required this.reviewText});
  final Image reviewImage;
  final String reviewName;
  final int rating;
  final String reviewText;

  static List<ReviewListForMcqDetail> getReviewForMcq() {
    return [
      ReviewListForMcqDetail(
          reviewImage: Image.asset('assets/images/pp.jpg'),
          reviewName: 'Reviewer 1',
          rating: 1,
          reviewText:
              'Course is Well Organized and Well taught. After completing this course your concepts on frontend and Backend will be cristal clear.'),
      ReviewListForMcqDetail(
          reviewImage: Image.asset('assets/images/DP.png'),
          reviewName: 'Reviewer 2',
          rating: 5,
          reviewText:
              'Course is Well Organized and Well taught. After completing this course your concepts on frontend and Backend will be cristal clear.'),
      ReviewListForMcqDetail(
          reviewImage: Image.asset('assets/images/pp.jpg'),
          reviewName: 'Reviewer 3',
          rating: 2,
          reviewText:
              'Course is Well Organized and Well taught. After completing this course your concepts on frontend and Backend will be cristal clear.'),
      ReviewListForMcqDetail(
          reviewImage: Image.asset('assets/images/DP.png'),
          reviewName: 'Reviewer 4',
          rating: 4,
          reviewText:
              'Course is Well Organized and Well taught. After completing this course your concepts on frontend and Backend will be cristal clear.'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: reviewImage.image,
            ),
            title: Text(
              reviewName,
              style: ttextstyle,
            ),
            subtitle: const Text(
              'Write a review',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFC6C6C6),
                  fontSize: 12),
            ),
            trailing: Container(
              width: Get.width * 0.29,
              // color: Colors.white,
              child: Row(
                children: [
                  RatingBar.builder(
                    initialRating: rating.toDouble(),
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
                  Text(
                    '  (${rating.toString()}/5)',
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              reviewText,
              style: const TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
          const Divider(
            thickness: 2,
            color: Color(0xFFEAEAEA),
          ),
        ],
      ),
    );
  }
}
