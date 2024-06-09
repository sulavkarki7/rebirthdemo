import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => _onTabTapped(0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: _selectedIndex == 0
                          ? const Color(0xFF2B3C98)
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Text(
                  'Content',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: _selectedIndex == 0
                        ? const Color(0xFF2B3C98)
                        : Colors.black,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onTabTapped(1),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: _selectedIndex == 1
                          ? const Color(0xFF2B3C98)
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Text(
                  'About',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: _selectedIndex == 1
                        ? const Color(0xFF2B3C98)
                        : Colors.black,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onTabTapped(2),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: _selectedIndex == 2
                          ? const Color(0xFF2B3C98)
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: _selectedIndex == 2
                        ? const Color(0xFF2B3C98)
                        : Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider(
          height: 0,
          indent: 20,
          endIndent: 20,
          color: const Color(0xFF2B3C98).withOpacity(0.4),
        ),
        IndexedStack(
          index: _selectedIndex,
          children: [
            Container(
                height: Get.height * 0.5,
                child: const Center(child: Text('Content for Tab 1'))),
            const Center(child: Text('Content for Tab 2')),
            const Center(child: Text('Content for Tab 3')),
          ],
        ),
      ],
    );
  }
}
