import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/components/coursecontainer_for_courses_list.dart';

class CoursePage extends StatefulWidget {
  final bool autoFocusSearch;
  const CoursePage({super.key, this.autoFocusSearch = false});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

enum FilterOption { all, beginnerClass, beginnerClass2 }

class _CoursePageState extends State<CoursePage> {
  bool radioStatus = false;
  FilterOption? _selectedFilter = FilterOption.all;
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

  void _applyFilter() {
    setState(() {
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 2,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.white,
            context: context,
            builder: (context) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                height: Get.height * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          'Filter Option',
                          style: productTitleStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Courses',
                          style: productTitleStyle,
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('All'),
                      leading: Radio<FilterOption>(
                        value: FilterOption.all,
                        groupValue: _selectedFilter,
                        onChanged: (FilterOption? value) {
                          setState(() {
                            _selectedFilter =
                                value; // Set _selectedFilter to the selected value
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Beginner class'),
                      leading: Radio<FilterOption>(
                        value: FilterOption.beginnerClass,
                        groupValue: _selectedFilter,
                        onChanged: (FilterOption? value) {
                          setState(() {
                            _selectedFilter = value;

                            _applyFilter();
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Beginner class2'),
                      leading: Radio<FilterOption>(
                        value: FilterOption.beginnerClass2,
                        groupValue: _selectedFilter,
                        onChanged: (FilterOption? value) {
                          setState(() {
                            _selectedFilter = value;
                            _applyFilter();
                          });
                        },
                      ),
                    ),
                  ],
                ),
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
