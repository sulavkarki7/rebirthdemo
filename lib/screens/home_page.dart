import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final int _numPages = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                elevation: 6,
                backgroundColor: Colors.grey[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: Colors.green),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                  (Route<dynamic> route) => false,
                );
              },
              child: const Text(
                'Skip',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: <Widget>[
              buildPage(1, 'assets/images/firstpage.png',
                  'Welcome To Our E-learning Application'),
              buildPage(2, 'assets/images/secondpage.png',
                  'Discover Your Learning Adventure'),
              buildPage(3, 'assets/images/thirdpage.png',
                  'Discover Your Learning Adventure'),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildPage(int pageNumber, String imagePath, String pageTitle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          pageTitle,
          style: titleTextStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(imagePath),
        const SizedBox(
          height: 115,
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey[200],
          child: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {
              if (_pageController.hasClients && _currentPage != _numPages - 1) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeIn,
                );
              } else {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                  (Route<dynamic> route) => false,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
