import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              size: 20, color: Colors.black), // Your custom icon
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Course Detail',
          style: appbarTitleStyle,
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/N5.2.png',
          ),
          ListTile(
            title: Text(
              'Japanese Basic N5',
              style: topicStyle,
            ),
            trailing: Icon(Icons.favorite_border),
          )
        ],
      ),
    );
  }
}
