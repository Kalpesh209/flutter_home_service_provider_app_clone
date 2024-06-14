import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_constants.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/service_card_layout_widget.dart';

class ServiceScreens extends StatelessWidget {
  const ServiceScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.blueColors,
              )),
        ),
        title: const Text(
          AppStrings.popularServices,
          style: TextStyle(
            color: AppColors.blueColors,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ServiceCardLayoutWidget(
                title: AppStrings.maintenance,
                listofdata: AppConstants.maintenanceData,
              ),
              ServiceCardLayoutWidget(
                title: AppStrings.cleaningServices,
                listofdata: AppConstants.cleaningData,
              ),
              ServiceCardLayoutWidget(
                title: AppStrings.homeImprovement,
                listofdata: AppConstants.homeImprovementData,
              ),
              ServiceCardLayoutWidget(
                title: AppStrings.security,
                listofdata: AppConstants.securityData,
              ),
              ServiceCardLayoutWidget(
                title: AppStrings.carMaintenanceServices,
                listofdata: AppConstants.carMaintenanceData,
              ),
              ServiceCardLayoutWidget(
                title: AppStrings.handymanMaintenanceServices,
                listofdata: AppConstants.handymanServicesData,
              ),
              ServiceCardLayoutWidget(
                title: AppStrings.paintingServices,
                listofdata: AppConstants.paintingServiceData,
              ),
              ServiceCardLayoutWidget(
                title: AppStrings.otherServices,
                listofdata: AppConstants.otherServiceData,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
