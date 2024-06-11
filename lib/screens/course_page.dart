import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/components/coursecontainer_for_courses_list.dart';
import 'package:rebirthdemo/components/filter_bottom_sheet.dart';

class CoursePage extends StatefulWidget {
  final bool autoFocusSearch;
  const CoursePage({super.key, this.autoFocusSearch = false});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

enum FilterOption { all, beginnerClass, beginnerClass2 }

class _CoursePageState extends State<CoursePage> {
  bool radioStatus = false;
  FilterOption? _selectedFilter = FilterOption.all; // Updated default value
  late FocusNode myFocusNode;

  List<String> allCourses = [
    "Course 1",
    "Course 2",
    "Course 3"
  ]; // Example courses
  List<String> filteredCourses = [];

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    if (widget.autoFocusSearch) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        myFocusNode.requestFocus();
      });
    }
    filteredCourses = allCourses;
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  void _applyFilter(FilterOption? filter) {
    setState(() {
      _selectedFilter = filter;
      if (_selectedFilter == FilterOption.all) {
        filteredCourses = allCourses;
      } else if (_selectedFilter == FilterOption.beginnerClass) {
        filteredCourses = allCourses
            .where((course) => course.contains("1"))
            .toList(); // Filter logic for beginnerClass
      } else if (_selectedFilter == FilterOption.beginnerClass2) {
        filteredCourses = allCourses
            .where((course) => course.contains("2"))
            .toList(); // Filter logic for beginnerClass2
      }
    });
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 2,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.white,
            context: context,
            builder: (context) {
              return FilterBottomSheet(
                selectedFilter: _selectedFilter,
                onFilterChanged: _applyFilter,
              );
            },
          );
        },
        child: Icon(
          Icons.filter_alt_outlined,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
