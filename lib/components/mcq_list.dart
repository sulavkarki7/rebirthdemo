import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rebirthdemo/components/constants.dart';

class McqList extends StatefulWidget {
  const McqList({super.key});

  @override
  State<McqList> createState() => _McqListState();
}

class Mcq {
  final String courseFirstTitle;
  // final String courseSecondTitle;
  final int coursePrice;
  final int courseRating;
  final Image courseImage;
  final int courseHRDuration;
  final int courseMinDuration;

  Mcq({
    required this.courseFirstTitle,
    // required this.courseSecondTitle,
    required this.coursePrice,
    required this.courseRating,
    required this.courseImage,
    required this.courseHRDuration,
    required this.courseMinDuration,
  });
}

List<Mcq> getCMcq() {
  return [
    Mcq(
      courseFirstTitle: 'Japanese Basic N5',
      // courseSecondTitle: 'Mcq 1',
      coursePrice: 500,
      courseRating: 4,
      courseImage: Image.asset('assets/images/33.png'),
      courseHRDuration: 1,
      courseMinDuration: 50,
    ),
    Mcq(
      courseFirstTitle: 'JFT - Basic',
      // courseSecondTitle: 'Mcq 2',
      coursePrice: 600,
      courseRating: 3,
      courseImage: Image.asset('assets/images/44.png'),
      courseHRDuration: 2,
      courseMinDuration: 30,
    ),
    Mcq(
      courseFirstTitle: 'Japanese Basic N5',
      // courseSecondTitle: 'Mcq 3',
      coursePrice: 400,
      courseRating: 3,
      courseImage: Image.asset('assets/images/33.png'),
      courseHRDuration: 1,
      courseMinDuration: 30,
    ),
    Mcq(
      courseFirstTitle: 'JFT - Basic',
      // courseSecondTitle: 'Course 4',
      coursePrice: 400,
      courseRating: 5,
      courseImage: Image.asset('assets/images/44.png'),
      courseHRDuration: 4,
      courseMinDuration: 30,
    ),
  ];
}

class _McqListState extends State<McqList> {
  List<Mcq> mcqs = getCMcq();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          color: Colors.white,
          height: Get.height * 0.29,
          width: Get.width * 0.48,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mcqs[index].courseImage,

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '   Rs. ${mcqs[index].coursePrice}',
                        style: priceStyle,
                      ),
                      SizedBox(
                        width: Get.width * 0.08,
                      ),
                      // / Add some space between the price and the rating
                      RatingBar.builder(
                        initialRating: mcqs[index].courseRating.toDouble(),
                        minRating: 1,
                        direction: Axis.horizontal,
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
                  Text(
                    '  ${mcqs[index].courseFirstTitle}',
                    style: mcqewsStyle,
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
                children: [
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  const Icon(Icons.access_time, size: 11),

                  Text(
                      '${mcqs[index].courseHRDuration} hr ${mcqs[index].courseMinDuration} min'),
                  // hr courses[index].courseMinDuration min,
                ],
              ), // Photo // Price
            ],
          ),
        );
      },
    );
  }
}
