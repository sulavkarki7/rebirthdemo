import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rebirthdemo/components/constants.dart';

class NewsListtile extends StatelessWidget {
  const NewsListtile({
    super.key,
    required this.newsTitle,
    required this.newsSubTitle,
    required this.newsImage,
    required this.newsYear,
    required this.newsmonth,
    required this.newsDay,
  });

  final String newsTitle;
  final String newsSubTitle;

  final Image newsImage;
  final int newsYear;
  final int newsDay;
  final String newsmonth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 5),
        color: Colors.white,
        height: Get.height * 0.1,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            newsImage,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    const Icon(Icons.calendar_month_outlined, size: 11),
                    Text('$newsmonth $newsDay $newsYear', style: durationStyle),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 5),
                    width: Get.width * 0.5,
                    child: Text(
                      newsTitle,
                      style: mcqewsStyle,
                      // maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    width: Get.width * 0.5,
                    child: Text(
                      newsSubTitle,
                      style: newscontentStyle,
                    ),
                  ),
                ),
              ],
            ),
            // Photo

            // Duration
          ],
        ),
      ),
    );
  }
}
