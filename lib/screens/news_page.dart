import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

import 'package:rebirthdemo/components/news_list.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  // static List<News> news = getNews();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'All News',
          style: appbarTitleStyle,
        ),
      ),
      body: const NewsList(),
      //
    );
  }
}
