import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rebirthdemo/components/constants.dart';

class CourseContainer extends StatelessWidget {
  const CourseContainer({
    super.key,
    // required this.courseSecondTitle,
    required this.coursePrice,
    required this.courseRating,
    required this.courseImage,
    required this.courseHRDuration,
    required this.courseMinDuration,
    required this.courseFirstTitle,
  });
  final String courseFirstTitle;
  // final String courseSecondTitle;
  final int coursePrice;
  final int courseRating;
  final Image courseImage;
  final int courseHRDuration;
  final int courseMinDuration;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        color: Colors.white,
        // height: Get.height * 0.29,
        // width: Get.width * 0.48,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            courseImage,
            Row(
              children: [
                SizedBox(
                  width: Get.width * 0.01,
                ),
                const Icon(Icons.access_time, size: 11),
                Text(
                  '$courseHRDuration hr $courseMinDuration min',
                  style: durationStyle,
                )
              ],
            ), // Photo
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' $courseFirstTitle',
                  style: productTitleStyle,
                ),
                // Text(
                //   ' $courseSecondTitle',
                //   style: productTitleStyle,
                // ),
              ],
            ),

            // Duration
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '  Rs. $coursePrice',
                  style: priceStyle,
                ),
                // / Add some space between the price and the rating
                RatingBar.builder(
                  initialRating: courseRating.toDouble(),
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
              ],
            ), // Price
          ],
        ),
      ),
    );
  }
}
