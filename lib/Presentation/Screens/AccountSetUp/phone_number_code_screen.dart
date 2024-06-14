import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_images.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Screens/AccountSetUp/location_access_screen.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/button_style_widget.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/enter_phone_code_widget.dart';

class PhoneNumberCodeScreen extends StatelessWidget {
  const PhoneNumberCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset(
            AppImages.logofixitImg,
          ),
        ),
        actions: [
          Image.asset(
            AppImages.frame3Img,
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
        child: Column(
          children: [
            const Text(
              AppStrings.enterFiveDigit,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            const CodeInputWidget(),
            const SizedBox(
              height: 57,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LocationAccessScreen(),
                  ),
                );
              },
              child: const ButtonStyleWidget(
                title: AppStrings.verify,
                colors: AppColors.blueColors,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue),
                  ),
                  child: const Center(
                    child: Text("60"),
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
                const Text(
                  AppStrings.didnot,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      AppStrings.sendAgain,
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
