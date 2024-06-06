import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/profileedit_page.dart';

class MyProfle extends StatelessWidget {
  const MyProfle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
              size: 20, color: Colors.black), // Your custom icon
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'My Profile',
          style: appbarTitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.045),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.black45,
                  radius: 70.00,
                  backgroundImage: AssetImage("assets/images/DP.png"),
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
                        color: const Color(0xFF2B3C98),
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
                        Icons.border_color,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.025,
            ),
            const Text(
              'John',
              style: productTitleStyle,
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Container(
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  'Name',
                  style: productTitleStyle,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'John',
                  hintStyle: editprofileStyle,
                  labelStyle: productTitleStyle,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF18A55C)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  'Email',
                  style: productTitleStyle,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'John@gmail.com',
                  hintStyle: editprofileStyle,
                  labelStyle: productTitleStyle,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF18A55C)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  'Phone Number',
                  style: productTitleStyle,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: '9845623789',
                  hintStyle: editprofileStyle,
                  labelStyle: productTitleStyle,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF18A55C)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  'Phone Number',
                  style: productTitleStyle,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                // inputFormatters: <TextInputFormatter>[
                //   FilteringTextInputFormatter.allow(RegExp(r'[0-9+]'))
                // ],
                decoration: const InputDecoration(
                  hintText: '9800000000',
                  hintStyle: editprofileStyle,
                  labelStyle: productTitleStyle,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF18A55C)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
