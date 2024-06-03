import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rebirthdemo/constants.dart';
import 'package:rebirthdemo/screens/signup_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset('assets/images/Logo.png'),
            ),
            const Text(
              'Welcome Back !',
              style: titleTextStyle,
            ),
            const Text('Login To Your Existant Account'),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Username',
                    prefixIcon: Icon(Icons.person_2_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
              ),
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                    const Text(
                      "Remeber Me",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                const Text(
                  'Forget Password',
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[700],
                  foregroundColor: Colors.white,
                  elevation: 5,
                  padding: const EdgeInsets.symmetric(horizontal: 130),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                    indent: 38,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Or',
                    style: ttextstyle,
                  ),
                ),
                Expanded(
                  child: Divider(
                    endIndent: 38,
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.white),
              icon: Image.asset('assets/images/google_logo.png', height: 18.0),
              label: Text('Continue with Google'),
              onPressed: () {},
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupPage()));
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't have an account ? ", style: ttextstyle),
                  Text(
                    'Register Here',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 65,
            ),
            const Text('Joining our app means you agree with out '),
            const Text(
              'Terms and Conditions ',
              style: TextStyle(
                  color: Colors.blue, decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}
