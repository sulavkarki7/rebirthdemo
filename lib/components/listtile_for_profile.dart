import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/assignment_page.dart';
import 'package:rebirthdemo/screens/course_history_page.dart';
import 'package:rebirthdemo/screens/course_page.dart';
import 'package:rebirthdemo/screens/help_center_page.dart';
import 'package:rebirthdemo/screens/log_out_page.dart';
import 'package:rebirthdemo/screens/my_profle.dart';
import 'package:rebirthdemo/screens/payment_method.dart';
import 'package:rebirthdemo/screens/privacy_policy_page.dart';
import 'package:rebirthdemo/screens/settings_page.dart';
import 'package:rebirthdemo/screens/syllabus_page.dart';

class ListtileForProfile extends StatelessWidget {
  ListtileForProfile({
    super.key,
    required this.title,
    required this.icon,
    required this.ownpage,
  });

  final String title;
  final IconData icon;
  final Widget ownpage;

  static List<ListtileForProfile> getlist() {
    return [
      ListtileForProfile(
        title: "My Profile",
        icon: Icons.account_circle_outlined,
        ownpage: const MyProfle(),
      ),
      ListtileForProfile(
        title: "Payment Methods",
        icon: Icons.payment_outlined,
        ownpage: const PaymentMethod(),
      ),
      ListtileForProfile(
        title: "Settings",
        icon: Icons.settings_outlined,
        ownpage: const SettingsPage(),
      ),
      ListtileForProfile(
        title: "Help Center",
        icon: Icons.help_center_outlined,
        ownpage: const HelpCenterPage(),
      ),
      ListtileForProfile(
        title: "Privacy Policy",
        icon: Icons.privacy_tip_outlined,
        ownpage: const PrivacyPolicyPage(),
      ),
      ListtileForProfile(
        title: "Assignments",
        icon: Icons.assignment_outlined,
        ownpage: const AssignmentPage(),
      ),
      ListtileForProfile(
        title: "Syllabus",
        icon: Icons.menu_book_outlined,
        ownpage: const SyllabusPage(),
      ),
      ListtileForProfile(
        title: "Course History",
        icon: Icons.history,
        ownpage: const CourseHistoryPage(),
      ),
      ListtileForProfile(
        title: "Log Out",
        icon: Icons.logout_rounded,
        ownpage: const LogOutPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            log('ListtileForProfile: $title have been pressed');
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ownpage;
            }));
          },
          child: ListTile(
            leading: Icon(
              icon,
              color: iconColor,
              size: 32,
            ),
            trailing:
                const Icon(Icons.arrow_forward_ios_outlined, color: iconColor),
            title: Text(
              title,
              style: mcqewsStyle,
            ),
          ),
        ),
        Divider(
          color: Colors.grey[400],
          indent: 20,
          endIndent: 20,
          height: 0,
        ),
      ],
    );
  }
}
