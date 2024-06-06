import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/verify_phnno_page.dart';

class ForgetPsw extends StatefulWidget {
  const ForgetPsw({super.key});

  @override
  State<ForgetPsw> createState() => _ForgetPswState();
}

class _ForgetPswState extends State<ForgetPsw> {
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
          'Forget Password',
          style: appbarTitleStyle,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: Get.height * 0.05),
          Image.asset('assets/images/frgtpsw.png'),
          SizedBox(height: Get.height * 0.02),
          SizedBox(
            width: Get.width * 0.5,
            child: const Text(
              'Please Enter Your Phone Number To Recieve a Verification Code',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF676767)),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: Get.height * 0.025),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                hintText: 'Enter Your Phone Number',
                hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF676767)),
                prefixIcon: Icon(Icons.call),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
          ),
          SizedBox(height: Get.height * 0.025),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VerifyPhnnoPage(),
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
              'Send',
              style: whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
