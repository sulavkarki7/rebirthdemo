import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

class ReviewMcq extends StatelessWidget {
  const ReviewMcq({super.key, required this.iiimage, required this.name});
  final String name;
  final Image iiimage;

  static List<ReviewMcq> getReviewMcq() {
    return [
      ReviewMcq(
          iiimage: Image.asset('assets/images/pp.jpg'), name: 'First Person'),
      ReviewMcq(
          iiimage: Image.asset('assets/images/DP.png'), name: 'Second Person'),
      ReviewMcq(
          iiimage: Image.asset('assets/images/pp.jpg'), name: 'Third Person'),
      ReviewMcq(
          iiimage: Image.asset('assets/images/DP.png'), name: 'Fourth Person'),
      ReviewMcq(
          iiimage: Image.asset('assets/images/pp.jpg'), name: 'Third Person'),
      ReviewMcq(
          iiimage: Image.asset('assets/images/DP.png'), name: 'Fourth Person'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: iiimage.image,
              ),
              Text(
                name,
                style: navtxtStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
