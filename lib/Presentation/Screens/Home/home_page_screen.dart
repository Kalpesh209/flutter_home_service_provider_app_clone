import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_constants.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_images.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_text_style.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Screens/ServiceProvider/service_provider.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Screens/Services/service_screens.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/service_card_widget.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/service_provider_card_widget.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({
    super.key,
  });

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
        actions: const [
          Icon(Icons.call),
          SizedBox(
            width: 24,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 193,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 147,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.deepPurple,
                              AppColors.blueColors,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.get30,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              AppStrings.just,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 22,
                      child: Image.asset(
                        AppImages.offerIconsImg,
                        height: 150,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: Image.asset(AppImages.filterImg),
                          hintText: AppStrings.searchHere,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.popularServices,
                    style: AppTextStyle.textStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ServiceScreens(),
                        ),
                      );
                    },
                    child: const Text(
                      AppStrings.viewAll,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      ServiceCardWidget(
                        title: AppStrings.plumbing,
                        imageUrl: AppImages.plumberImg,
                      ),
                      ServiceCardWidget(
                        title: AppStrings.electricwork,
                        imageUrl: AppImages.electricworkImg,
                      ),
                      ServiceCardWidget(
                        title: AppStrings.solar,
                        imageUrl: AppImages.solarenergyImg,
                      ),
                      ServiceCardWidget(
                        title: AppStrings.airConditenior,
                        imageUrl: AppImages.airconditeniorImg,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.servicesprovider,
                    style: AppTextStyle.textStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ServiceProviderScreens(),
                        ),
                      );
                    },
                    child: const Text(
                      AppStrings.viewAll,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: AppConstants.serviceProvider.length,
                  itemBuilder: (context, index) {
                    return ServiceProviderCardWidget(
                      name: AppConstants.serviceProvider[index].name.toString(),
                      profession: AppConstants.serviceProvider[index].profession
                          .toString(),
                      rating:
                          AppConstants.serviceProvider[index].rating.toString(),
                      imageUrl: AppConstants.serviceProvider[index].imageUrl
                          .toString(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
