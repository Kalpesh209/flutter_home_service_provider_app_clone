import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_images.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_text_style.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Screens/AccountSetUp/upload_documents_screen.dart';

import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/button_style_widget.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/select_row_container_widget.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/textfromfield_widget.dart';

class ServiceWorkingHoursScreen extends StatefulWidget {
  const ServiceWorkingHoursScreen({super.key});

  @override
  State<ServiceWorkingHoursScreen> createState() => _ServiceWorkingHoursState();
}

class _ServiceWorkingHoursState extends State<ServiceWorkingHoursScreen> {
  TextEditingController startingTime = TextEditingController();
  TextEditingController endingTime = TextEditingController();
  bool select1 = false;
  bool select2 = false;
  String iconTrue = AppImages.trueselectImg;
  String iconFalse = AppImages.truenotselectImg;
  String img1 = AppImages.truenotselectImg;
  String img2 = AppImages.truenotselectImg;
  @override
  void initState() {
    super.initState();
  }

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                AppStrings.serviceWorkingHours,
                style: AppTextStyle.textStyle,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                AppStrings.from,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextFromFieldWidget(
                controller: startingTime,
                hintText: AppStrings.eightAM,
                colors: Colors.black,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                AppStrings.to,
                style: AppTextStyle.textStyle
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              TextFromFieldWidget(
                controller: endingTime,
                hintText: AppStrings.eightPM,
                colors: Colors.black,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                AppStrings.howDoYouReceiveOrder,
                style: AppTextStyle.textStyle,
              ),
              const SizedBox(
                height: 24,
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
                child: SelectRowContainerWidget(
                  title: AppStrings.fixit,
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
                child: SelectRowContainerWidget(
                  title: AppStrings.client,
                  img: img2,
                  select: select2,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UploadDocumentScreen(),
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
      ),
    );
  }
}
