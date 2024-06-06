import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rebirthdemo/components/constants.dart';
import 'package:rebirthdemo/screens/home_screen.dart';

class CreateNewPsw extends StatefulWidget {
  const CreateNewPsw({super.key});

  @override
  State<CreateNewPsw> createState() => _CreateNewPswState();
}

class _CreateNewPswState extends State<CreateNewPsw> {
  bool isPasswordVisible = false;
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
          'Create New Password',
          style: appbarTitleStyle,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: Get.height * 0.05),
          Image.asset('assets/images/frgtpsw.png'),
          SizedBox(height: Get.height * 0.025),
          Container(
            width: Get.width * 0.6,
            child: const Text(
              'Your New Password Must Be Different From Previously Used Password',
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
              obscureText: !isPasswordVisible,
              decoration: InputDecoration(
                hintText: 'Enter Your New Password',
                hintStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF676767)),
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  icon: Icon(isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: Get.height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Your New Password',
                hintStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF676767)),
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  icon: Icon(isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
                border: const OutlineInputBorder(
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
                  builder: (context) => const HomeScreen(),
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
              'Change',
              style: whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
