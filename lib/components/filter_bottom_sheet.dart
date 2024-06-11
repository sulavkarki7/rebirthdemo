import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/course_page.dart';

class FilterBottomSheet extends StatefulWidget {
  final FilterOption? selectedFilter;
  final ValueChanged<FilterOption?> onFilterChanged;

  FilterBottomSheet({
    Key? key,
    this.selectedFilter,
    required this.onFilterChanged,
  }) : super(key: key);

  @override
  _FilterBottomSheetState createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  FilterOption? _selectedFilter;

  @override
  void initState() {
    super.initState();
    _selectedFilter = widget.selectedFilter;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
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
          RadioListTile<FilterOption>(
            value: FilterOption.all,
            groupValue: _selectedFilter,
            title: Text(
              'All',
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.black),
            ),
            onChanged: (FilterOption? newValue) {
              setState(() {
                _selectedFilter = newValue;
                widget.onFilterChanged(newValue);
              });
            },
            dense: true,
            activeColor: const Color(0xFF2B3C98),
          ),
          RadioListTile<FilterOption>(
            value: FilterOption.beginnerClass,
            groupValue: _selectedFilter,
            title: Text(
              'Beginner class',
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.black),
            ),
            onChanged: (FilterOption? newValue) {
              setState(() {
                _selectedFilter = newValue;
                widget.onFilterChanged(newValue);
              });
            },
            dense: true,
            activeColor: const Color(0xFF2B3C98),
          ),
          RadioListTile<FilterOption>(
            value: FilterOption.beginnerClass2,
            groupValue: _selectedFilter,
            title: Text(
              'Beginner class 2',
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.black),
            ),
            onChanged: (FilterOption? newValue) {
              setState(() {
                _selectedFilter = newValue;
                widget.onFilterChanged(newValue);
              });
            },
            dense: true,
            activeColor: const Color(0xFF2B3C98),
          ),
        ],
      ),
    );
  }
}
