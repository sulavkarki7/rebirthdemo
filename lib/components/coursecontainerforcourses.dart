import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rebirthdemo/components/constants.dart';

class Coursecontainerforcourses extends StatelessWidget {
  const Coursecontainerforcourses({
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
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        color: Colors.white,
        height: Get.height * 0.2,
        width: double.infinity,
        // margin: EdgeInsets.symmetric(horizontal: 5),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            courseImage,
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' $courseFirstTitle',
                      style: productTitleStyle,
                    ),
                  ],
                ),
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

                // Duration
                Text(
                  '  Rs. $coursePrice',
                  style: priceStyle,
                ), // Price
              ],
            ), // Photo
          ],
        ),
      ),
    );
  }
}
