import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/components/coursecontainer_for_courses_list.dart';

class CoursePage extends StatefulWidget {
  final bool autoFocusSearch;
  const CoursePage({super.key, this.autoFocusSearch = false});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    if (widget.autoFocusSearch) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        myFocusNode.requestFocus();
      });
    }
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'All Courses',
          style: appbarTitleStyle,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              focusNode: myFocusNode,

              // autofocus: true,
              decoration: InputDecoration(
                focusColor: Colors.green[100],
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.blue[900],
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ),
          const CoursecontainerForCoursesList(),
        ],
      ),
    );
  }
}
