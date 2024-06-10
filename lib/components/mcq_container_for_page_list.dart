import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/mcq_detail_page.dart';

class McqContainerForPageList extends StatelessWidget {
  const McqContainerForPageList(
      {super.key,
      required this.mcqTitle,
      required this.mcqPrice,
      required this.mcqRating,
      required this.mcqImage,
      required this.mcqHRDuration,
      required this.mcqMinDuration});

  final String mcqTitle;

  final int mcqPrice;
  final int mcqRating;
  final Image mcqImage;
  final int mcqHRDuration;
  final int mcqMinDuration;

  static List<McqContainerForPageList> getMcq() {
    return [
      McqContainerForPageList(
          mcqTitle: 'Japanese Basic N5',
          mcqPrice: 200,
          mcqRating: 4,
          mcqImage: Image.asset('assets/images/33.png'),
          mcqHRDuration: 00,
          mcqMinDuration: 00),
      McqContainerForPageList(
          mcqTitle: 'JFT - Basic',
          mcqPrice: 400,
          mcqRating: 2,
          mcqImage: Image.asset('assets/images/44.png'),
          mcqHRDuration: 00,
          mcqMinDuration: 00),
      McqContainerForPageList(
          mcqTitle: 'Japanese Basic N5',
          mcqPrice: 100,
          mcqRating: 3,
          mcqImage: Image.asset('assets/images/44.png'),
          mcqHRDuration: 00,
          mcqMinDuration: 00),
      McqContainerForPageList(
          mcqTitle: 'JFT - Basic',
          mcqPrice: 100,
          mcqRating: 5,
          mcqImage: Image.asset('assets/images/33.png'),
          mcqHRDuration: 00,
          mcqMinDuration: 00),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return McqDetailPage();
          }));
        },
        child: Container(
          color: Colors.white,
          height: Get.height * 0.12,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mcqImage,
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

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: Get.width * 0.5,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7.0),
                        child: Text(
                          '${mcqTitle}',
                          style: productTitleStyle,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.007,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      const Icon(Icons.access_time, size: 11),
                      Text(
                        ' ${mcqHRDuration} hr ${mcqMinDuration} min',
                        style: durationStyle,
                      )
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.007,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      RatingBar.builder(
                        initialRating: mcqRating.toDouble(),
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
                  SizedBox(
                    height: Get.height * 0.007,
                  ),

                  // Duration
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      Text(
                        'Rs. ${mcqPrice}',
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
