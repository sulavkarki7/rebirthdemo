import 'package:flutter/material.dart';

import 'package:rebirthdemo/components/coursecontainerforcourses.dart';

class CoursecontainerForCoursesList extends StatefulWidget {
  const CoursecontainerForCoursesList({
    super.key,
  });

  @override
  State<CoursecontainerForCoursesList> createState() =>
      _CoursecontainerForCoursesListState();
}

class _CoursecontainerForCoursesListState
    extends State<CoursecontainerForCoursesList> {
  List<Coursecontainerforcourses> lisst = Coursecontainerforcourses.getlisst();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lisst.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => lisst[index],
    );
  }
}
