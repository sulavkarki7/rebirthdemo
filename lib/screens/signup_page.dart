import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rebirthdemo/constants.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'SIGN UP',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            // ListTile(
            //   leading: Icon(
            //     Icons.person_2_outlined,
            //   ),
            //   title: Text('Username'),
            // )
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIcon: Icon(Icons.person_2_outlined),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    hintStyle: ttextstyle,
                    prefixIcon: Icon(Icons.lock_outlined),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                const Text(
                  "I agree to all the ",
                  style: TextStyle(color: Colors.black),
                ),
                const Text(
                  'Terms & Conditions',
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  log('$isChecked');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  padding: const EdgeInsets.symmetric(horizontal: 130),
                ),
                child: const Text(
                  'Create Account',
                  // style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}
