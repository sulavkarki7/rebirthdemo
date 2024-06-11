import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/course_detail_page.dart';

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

  static List<Coursecontainerforcourses> getlisst() {
    return [
      Coursecontainerforcourses(
          courseFirstTitle: 'Japanese Basic N5 Jap Ese Basic N5',
          coursePrice: 500,
          courseRating: 4,
          courseImage: Image.asset(
            'assets/images/Rectangle 11.png',
            // fit: BoxFit.fill,
          ),
          courseHRDuration: 1,
          courseMinDuration: 50),
      Coursecontainerforcourses(
          courseFirstTitle: 'Japanese Basic N5\n Jap Ese Basic ',
          coursePrice: 400,
          courseRating: 3,
          courseImage: Image.asset('assets/images/N5.2.png'),
          courseHRDuration: 1,
          courseMinDuration: 30),
      Coursecontainerforcourses(
          courseFirstTitle: 'Japanese Basic N5\n Jap Ese Basic N5',
          coursePrice: 100,
          courseRating: 5,
          courseImage: Image.asset('assets/images/Rectangle 11.png'),
          courseHRDuration: 2,
          courseMinDuration: 10),
      Coursecontainerforcourses(
          courseFirstTitle: 'Japanese Basic N5\n Jap Ese Basic N5',
          coursePrice: 200,
          courseRating: 4,
          courseImage: Image.asset('assets/images/N5.2.png'),
          courseHRDuration: 1,
          courseMinDuration: 50),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CourseDetailPage();
          }));
        },
        child: Container(
          color: Colors.white,
          height: Get.height * 0.12,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              courseImage,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      const Icon(Icons.access_time, size: 11),
                      Text(
                        ' ${courseHRDuration} hr ${courseMinDuration} min',
                        style: durationStyle,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: Get.width * 0.5,
                      child: Text(
                        '${courseFirstTitle}',
                        style: productTitleStyle,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      RatingBar.builder(
                        initialRating: courseRating.toDouble(),
                        minRating: 1,
                        direction: Axis.horizontal,
                        ignoreGestures: false,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15, // Adjust the size of the stars
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.1),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          // log('Rating is: $rating');
                        },
                      ),
                    ],
                  ),

                  // Duration
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      Text(
                        'Rs. ${coursePrice}',
                        style: priceStyle,
                      ),
                    ],
                  ),
                ],
              ), // Photo
              // Price
            ],
          ),
        ),
      ),
    );
  }
}
