import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/components/listtile_for_profile.dart';
import 'package:rebirthdemo/screens/profileedit_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.02),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.black45,
                  radius: 70.00,
                  backgroundImage: AssetImage("assets/images/pp.jpg"),
                ),
                Positioned(
                  bottom: 0,
                  right: 5,
                  top: 100,
                  left: 95,
                  child: Container(
                    // height: 5,
                    // width: 55,
                    decoration: BoxDecoration(
                        color: Colors.red[700],
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(width: 2, color: Colors.white)),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileeditPage(),
                          ),
                        );
                      },
                      icon: const Icon(
                        size: 20,
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),

            Text(
              'John',
              style: productTitleStyle,
            ),

            // ListView.builder(
            //   itemCount: proofile.length,
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) => Row(
            //     children: [
            //       Icon(proofile[index].icon),
            //       Text(proofile[index].title),
            //     ],
            //   ),
            // ),
            ListtileForProfile(
                title: "My Profile", icon: Icons.account_circle_outlined),
            ListtileForProfile(
                title: "Payment Methods", icon: Icons.payment_outlined),
            ListtileForProfile(
                title: "Settings", icon: Icons.settings_outlined),

            ListtileForProfile(
                title: "Help Cneter", icon: Icons.help_center_outlined),
            ListtileForProfile(
                title: "Privacy Policy", icon: Icons.privacy_tip_outlined),
            ListtileForProfile(
                title: "Assignments", icon: Icons.assignment_outlined),
            ListtileForProfile(
                title: "Syllabus", icon: Icons.menu_book_outlined),

            ListtileForProfile(title: "Course History", icon: Icons.history),
            ListtileForProfile(title: "Log Out", icon: Icons.logout_rounded),
          ],
        ),
      ),
    );
  }
}
