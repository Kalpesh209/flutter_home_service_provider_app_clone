import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_images.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_text_style.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Screens/AccountSetUp/service_working_hours_screen.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/button_style_widget.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/dropdown_menu_box_widget.dart';

class AboutServiceScreen extends StatefulWidget {
  const AboutServiceScreen({super.key});

  @override
  State<AboutServiceScreen> createState() => _AboutServiceState();
}

class _AboutServiceState extends State<AboutServiceScreen> {
  List<String> services = [
    AppStrings.acService,
    AppStrings.carService,
    AppStrings.busService,
    AppStrings.plumberService,
    AppStrings.electricianService,
    AppStrings.cleaningService,
    AppStrings.carpenterService,
    AppStrings.gardeningService,
    AppStrings.pestControlService,
    AppStrings.paintingService
  ];
  List<String> experience = [
    AppStrings.noExp,
    AppStrings.lessExp,
    AppStrings.oneyearExp,
    AppStrings.twoExp,
    AppStrings.threeExp,
    AppStrings.fourExp,
    AppStrings.fievExp,
    AppStrings.tenExp,
  ];
  List<String> area = [
    AppStrings.bhat,
    AppStrings.hansol,
    AppStrings.maninagar,
    AppStrings.naroda,
    AppStrings.navrangpura,
    AppStrings.nikol,
    AppStrings.vasna,
    AppStrings.vastral,
    AppStrings.vastrapur,
  ];
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
            AppImages.frame5Img,
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.selectaService,
              style: AppTextStyle.textStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            DropdownMenuBoxWidget(
              itemList: services,
              hintText: AppStrings.selectaService,
            ),
            const SizedBox(
              height: 16,
            ),
            DropdownMenuBoxWidget(
              itemList: experience,
              hintText: AppStrings.selectYourExperience,
            ),
            const SizedBox(
              height: 16,
            ),
            DropdownMenuBoxWidget(
              itemList: area,
              hintText: AppStrings.selectServiceArea,
            ),
            const SizedBox(
              height: 126,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ServiceWorkingHoursScreen(),
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
