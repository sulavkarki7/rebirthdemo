import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/news_listtile.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class News {
  final String newsTitle;
  final String newsSubTitle;

  final Image newsImage;
  final int newsDay;
  final int newsYear;
  final String newsmonth;

  News({
    required this.newsTitle,
    required this.newsmonth,
    required this.newsSubTitle,
    required this.newsImage,
    required this.newsDay,
    required this.newsYear,
  });
}

List<News> getNews() {
  return [
    News(
        newsTitle: 'Welcoming the New Year with joy and hope',
        newsmonth: 'Apr',
        newsSubTitle:
            'Happy New Year! What are your plans or resolutions for the year ahead?',
        newsImage: Image.asset('assets/images/44.png'),
        newsDay: 22,
        newsYear: 2024),
    News(
        newsTitle: 'Welcoming the New Year with joy and hope',
        newsmonth: 'May',
        newsSubTitle:
            'Happy New Year! What are your plans or resolutions for the year ahead?',
        newsImage: Image.asset('assets/images/33.png'),
        newsDay: 10,
        newsYear: 2024),
    News(
        newsTitle: 'Welcoming the New Year with joy and hope',
        newsmonth: 'Apr',
        newsSubTitle:
            'Happy New Year! What are your plans or resolutions for the year ahead?',
        newsImage: Image.asset('assets/images/44.png'),
        newsDay: 22,
        newsYear: 2024),
    News(
        newsTitle: 'Welcoming the New Year with joy and hope',
        newsmonth: 'Aug',
        newsSubTitle:
            'Happy New Year! What are your plans or resolutions for the year ahead?',
        newsImage: Image.asset('assets/images/33.png'),
        newsDay: 19,
        newsYear: 2023),
    News(
        newsTitle: 'Welcoming the New Year with joy and hope',
        newsmonth: 'Feb',
        newsSubTitle:
            'Happy New Year! What are your plans or resolutions for the year ahead?',
        newsImage: Image.asset('assets/images/44.png'),
        newsDay: 29,
        newsYear: 2024),
  ];
}

class _NewsListState extends State<NewsList> {
  static List<News> news = getNews();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: news
          .map((news) => NewsListtile(
                newsTitle: news.newsTitle,
                newsSubTitle: news.newsSubTitle,
                newsImage: news.newsImage,
                newsYear: news.newsYear,
                newsDay: news.newsDay,
                newsmonth: news.newsmonth,
              ))
          .toList(),
    );
  }
}
