import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_images.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_text_style.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Screens/AccountSetUp/phone_number_screen.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/button_style_widget.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/select_container_widget.dart';

class ImLookingForScreen extends StatefulWidget {
  const ImLookingForScreen({super.key});

  @override
  State<ImLookingForScreen> createState() => _ImLookingForState();
}

class _ImLookingForState extends State<ImLookingForScreen> {
  bool select1 = false;
  bool select2 = false;
  String iconTrue = AppImages.trueselectImg;
  String iconFalse = AppImages.truenotselectImg;
  String img1 = AppImages.truenotselectImg;
  String img2 = AppImages.truenotselectImg;

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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 36,
            ),
            Text(
              AppStrings.iAm,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 48,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  img1 = iconTrue;
                  img2 = iconFalse;
                  select1 = true;
                  select2 = false;
                });
              },
              child: SelectContainerWidget(
                title1: AppStrings.servicesprovider,
                title2: AppStrings.iOffer,
                img: img1,
                select: select1,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  img1 = iconFalse;
                  img2 = iconTrue;
                  select1 = false;
                  select2 = true;
                });
              },
              child: SelectContainerWidget(
                title1: AppStrings.lookingForServies,
                title2: AppStrings.lookingForHomeServies,
                img: img2,
                select: select2,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PhoneNumberScreen(),
                  ),
                );
              },
              child: const ButtonStyleWidget(
                title: AppStrings.next,
                colors: AppColors.blueColors,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
