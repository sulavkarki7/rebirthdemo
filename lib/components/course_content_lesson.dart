import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebirthdemo/components/constants.dart';

class CourseContentLesson extends StatelessWidget {
  const CourseContentLesson(
      {super.key,
      required this.lessonNo,
      required this.lessonTitle,
      required this.expandedMin,
      required this.expandedSec,
      required this.expandedTitle});
  final int lessonNo;
  final String lessonTitle;
  final String expandedTitle;
  final int expandedMin;
  final int expandedSec;

  static List<CourseContentLesson> getCourseContent() {
    return [
      const CourseContentLesson(
        lessonNo: 1,
        lessonTitle: 'Introduction ',
        expandedMin: 15,
        expandedSec: 30,
        expandedTitle: 'First Video',
      ),
      const CourseContentLesson(
        lessonNo: 2,
        lessonTitle: 'Level Up ',
        expandedMin: 12,
        expandedSec: 00,
        expandedTitle: 'Second Video',
      ),
      const CourseContentLesson(
        lessonNo: 3,
        lessonTitle: 'Important One',
        expandedMin: 20,
        expandedSec: 30,
        expandedTitle: 'Third Video',
      ),
      const CourseContentLesson(
        lessonNo: 4,
        lessonTitle: 'Last One',
        expandedMin: 10,
        expandedSec: 00,
        expandedTitle: 'Fourth Video',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'Lesson $lessonNo : $lessonTitle',
        style: courseContentStyle,
      ),
      children: [
        Container(
          height: Get.height * 0.05,
          margin: const EdgeInsets.symmetric(horizontal: 14.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: Colors.grey[200]),
          child: Transform.translate(
            offset: const Offset(0, -4),
            child: ListTile(
              contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              leading: const Icon(
                Icons.play_circle_outline,
                color: Color(0xFF2B3C98),
              ),
              title: Text(
                expandedTitle,
                style: productTitleStyle,
              ),
              trailing: Text(
                '$expandedMin:$expandedSec',
                style: timeStyle,
              ),
            ),
          ),
        ),
        SizedBox(
          height: Get.height * 0.003,
        ),
        Container(
          height: Get.height * 0.05,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 14.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: Colors.grey[200]),
          child: Transform.translate(
            offset: const Offset(0, -4),
            child: ListTile(
              contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              leading: const Icon(
                Icons.play_circle_outline,
                color: Color(0xFF2B3C98),
              ),
              title: Text(
                expandedTitle,
                style: productTitleStyle,
              ),
              trailing: Text(
                '$expandedMin:$expandedSec',
                style: timeStyle,
              ),
            ),
          ),
        )
      ],
    );
  }
}
