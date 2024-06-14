import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_images.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_text_style.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Screens/Auth/login_screen.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/button_style_widget.dart';

/*
Title: WelcomeToFixitScreen used thorough App
Purpose:WelcomeToFixitScreen used thorough App
Created On: 12/06/2024
Edited On:12/06/2024
Author: Kalpesh Khandla
*/

class WelcomeToFixitScreen extends StatefulWidget {
  const WelcomeToFixitScreen({super.key});

  @override
  State<WelcomeToFixitScreen> createState() => _WelcomeToFixitState();
}

class _WelcomeToFixitState extends State<WelcomeToFixitScreen> {
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
  }

  final List<Widget> _pages = [
    const ItBoxWidget(
      img: AppImages.welcomeToFixItImg,
      title: AppStrings.welcome,
      text1: AppStrings.discover,
      text2: AppStrings.reliability,
      text3: AppStrings.serviceNee,
    ),
    const ItBoxWidget(
      img: AppImages.welcomeFindServiceImg,
      title: AppStrings.findService,
      text1: AppStrings.browse,
      text2: AppStrings.services,
      text3: AppStrings.appliance,
    ),
    const ItBoxWidget(
      img: AppImages.welcomeTo3Img,
      title: AppStrings.findService,
      text1: AppStrings.browse,
      text2: AppStrings.services,
      text3: AppStrings.appliance,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 56),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF004e99),
              Color(0xFF012951),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(_pages.length, (int index) {
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == index
                              ? Colors.white
                              : Colors.grey,
                        ),
                      );
                    }).toList(),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      AppStrings.skip,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _pages[_currentPage],
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (_currentPage < 2) {
                    _currentPage++;
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  }
                });
              },
              child: const ButtonStyleWidget(
                title: AppStrings.next,
                colors: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItBoxWidget extends StatelessWidget {
  final String img;
  final String title;
  final String text1;
  final String text2;
  final String text3;
  const ItBoxWidget({
    super.key,
    required this.img,
    required this.title,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 595,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 385.6,
            width: 277,
            child: Image(
              image: AssetImage(img),
            ),
          ),
          const SizedBox(
            height: 39.7,
          ),
          Text(
            title,
            style: AppTextStyle.welcomeStyle,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            text1,
            style: AppTextStyle.welcomeSubStyle,
          ),
          Text(
            text2,
            style: AppTextStyle.welcomeSubStyle,
          ),
          Text(
            text3,
            style: AppTextStyle.welcomeSubStyle,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
