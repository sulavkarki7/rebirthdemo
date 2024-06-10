import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

class CourseContentLesson extends StatelessWidget {
  const CourseContentLesson(
      {super.key, required this.lessonNo, required this.lessonTitle});
  final int lessonNo;
  final String lessonTitle;

  static List<CourseContentLesson> getCourseContent() {
    return [
      const CourseContentLesson(lessonNo: 1, lessonTitle: 'Introduction '),
      const CourseContentLesson(lessonNo: 2, lessonTitle: 'Level Up '),
      const CourseContentLesson(lessonNo: 3, lessonTitle: 'Important One'),
      const CourseContentLesson(lessonNo: 4, lessonTitle: 'Last One'),
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
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
          child: ListTile(
            leading: Icon(
              Icons.play_circle_outline,
              color: Color(0xFF2B3C98),
            ),
            title: Text(
              'Intorduction',
              style: productTitleStyle,
            ),
            trailing: Text(
              '15:30',
              style: timeStyle,
            ),
          ),
        )
      ],
    );
  }
}
