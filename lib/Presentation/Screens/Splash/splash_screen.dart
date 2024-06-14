import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_images.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Screens/Onboarding/welcome_to_fixit_screen.dart';

/*
Title:SplashScreen
Purpose:To Show a SplashScreen 
Created On:12/06/2024
Edited On:12/06/2024
Author: Kalpesh Khandla
*/

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateTOWelcomeScreen();
  }

  navigateTOWelcomeScreen() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomeToFixitScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.white,
            Colors.blue.shade300,
          ],
        ),
      ),
      child: Center(
        child: Image.asset(
          AppImages.logofixitImg,
        ),
      ),
    );
  }
}
