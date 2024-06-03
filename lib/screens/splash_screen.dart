import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:rebirthdemo/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 31, 113, 214),
          Color.fromARGB(255, 183, 237, 82),
        ],
      ),
      childWidget: SizedBox(
        height: 180,
        width: 180,
        child: Image.asset("assets/images/Logo.png"),
      ),
      duration: const Duration(milliseconds: 4500),
      animationDuration: const Duration(milliseconds: 2500),
      onAnimationEnd: () => debugPrint("On Scale End"),
      nextScreen: const HomePage(),
    );
  }
}
