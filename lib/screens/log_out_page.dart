import 'package:flutter/material.dart';

import 'package:rebirthdemo/screens/home_screen.dart';

class LogOutPage extends StatelessWidget {
  const LogOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Log Out',
      //     style: appbarTitleStyle,
      //   ),
      // ),
      body: AlertDialog(
        backgroundColor: Colors.lightBlue[50],
        title: const Text('Are you sure you want to log out?'),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.red[400],
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'No',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.green[400],
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: const Text(
              'Yes',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
