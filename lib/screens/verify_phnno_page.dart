import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/create_new_psw.dart';

class VerifyPhnnoPage extends StatefulWidget {
  const VerifyPhnnoPage({super.key});

  @override
  State<VerifyPhnnoPage> createState() => _VerifyPhnnoPageState();
}

class _VerifyPhnnoPageState extends State<VerifyPhnnoPage> {
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
          'Verify Your Phone Number',
          style: appbarTitleStyle,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.05,
          ),
          SizedBox(
            width: Get.width * 0.7,
            child: const Text(
              'Please Enter The 4 Digit Code Sent to Your Number',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color(0xFF676767),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.025,
          ),
          SizedBox(
            width: Get.width * 0.88,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (int i = 0; i < 4; i++)
                  SizedBox(
                    width: Get.width * 0.15,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: '|',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF676767),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.025,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreateNewPsw(),
                ),
              );
            },
            style: TextButton.styleFrom(
              fixedSize: Size(Get.width * 0.88, Get.height * 0.06),
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xFF2B3C98),
              disabledForegroundColor: Colors.grey.withOpacity(0.38),
            ),
            child: const Text(
              'Verify',
              style: whiteColor,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't you receive OTP ? ",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'Resend OTP',
                  style: TextStyle(
                      color: Color(0xFF2B3C98),
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
