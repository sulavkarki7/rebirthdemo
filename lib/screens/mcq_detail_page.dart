import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/components/mcq_container_for_page_list.dart';
import 'package:rebirthdemo/components/review_mcq.dart';

class McqDetailPage extends StatelessWidget {
  const McqDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<McqContainerForPageList> imcq = McqContainerForPageList.getMcq();
    List<ReviewMcq> getReviewMcq = ReviewMcq.getReviewMcq();

    final mediaQuery = MediaQuery.of(context);
    final availableHeight = mediaQuery.size.height -
        mediaQuery.padding.top -
        mediaQuery.padding.bottom -
        kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          ' All MCQ',
          style: appbarTitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.01,
            ),
            Center(child: imcq[0].mcqImage),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Text(
                      'Quiz Description : ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2B3C98),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        fixedSize: const Size(80, 40),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 3),
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF2B3C98),
                      ),
                      child: const Text(
                        'START EXAM',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                  'A first-year Bachelor of Business Studies (BBS) student typically begins their academic journey by gaining foundational knowledge in various aspects of business management.'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Top Scorer',
                style: topicStyle,
              ),
            ),
            SizedBox(
              height: Get.height * 0.107,
              child: ListView.builder(
                  itemCount: getReviewMcq.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return getReviewMcq[index];
                  }),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Instructor',
                style: topicStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey[300]!)),
                child: const ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/teacher.jpg'),
                  ),
                  title: Text(
                    'Mr. John Doe',
                    style: ttextstyle,
                  ),
                  subtitle: Text(
                    'Government Job\nCoputer Teacher',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                height: Get.height * 0.08,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey[300]!)),
                child: Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18, // Adjust the size of the stars
                      itemPadding: const EdgeInsets.symmetric(horizontal: 0.1),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        // log('Rating is: $rating');
                      },
                    ),
                    SizedBox(
                      width: Get.width * 0.06,
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Write a review",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.grey),
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: const Size(100, 40),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 3),
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFF2B3C98),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'ADD REVIEW',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
