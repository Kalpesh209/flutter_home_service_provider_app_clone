/*
Title: AppConstants used thorough App
Purpose:AppConstants used thorough App
Created On: 12/06/2024
Edited On:12/06/2024
Author: Kalpesh Khandla
*/

import 'package:flutter_home_service_provider_app_clone/AppUtils/app_images.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_home_service_provider_app_clone/Models/service_icon.dart';
import 'package:flutter_home_service_provider_app_clone/Models/service_provider.dart';

class AppConstants {
  // Base Image Path
  static const String baseImagePath = 'assets/images';

  // Base Icon Path
  static const String baseIconPath = 'assets/icons';

  // Base Flag Path
  static const String baseFlagPath = 'assets/flag';

  // Base logo Path
  static const String baseLogoPath = 'assets/logo';

  // Base screens Path
  static const String baseScreensPath = 'assets/screens';

  // Base serviceicons Path
  static const String baseScreenIconsPath = 'assets/serviceicons';

  // Base serviceprovider Path
  static const String baseServiceProviderPath = 'assets/serviceprovider';

  static int selectedNumber = 91;

  static bool generalNotification = true;
  static bool sound = false;
  static bool vibrate = true;
  static bool newService = false;
  static bool payment = true;

  static List<ServiceIcons> maintenanceData = [
    ServiceIcons(
      title: AppStrings.airConditenior,
      imageUrl: AppImages.airconditeniorImg,
    ),
    ServiceIcons(
      title: AppStrings.electricWork,
      imageUrl: AppImages.electricworkImg,
    ),
    ServiceIcons(
      title: AppStrings.sidingRepair,
      imageUrl: AppImages.sidingrepairImg,
    ),
  ];
  static List<ServiceIcons> cleaningData = [
    ServiceIcons(
      title: AppStrings.homeflooring,
      imageUrl: AppImages.homeflooringImg,
    ),
    ServiceIcons(
      title: AppStrings.gutter,
      imageUrl: AppImages.gutterImg,
    ),
    ServiceIcons(
      title: AppStrings.carpet,
      imageUrl: AppImages.carpetImg,
    ),
  ];
  static List<ServiceIcons> homeImprovementData = [
    ServiceIcons(
      title: AppStrings.drilling,
      imageUrl: AppImages.drillingImg,
    ),
    ServiceIcons(
      title: AppStrings.iawn,
      imageUrl: AppImages.iawnImg,
    ),
    ServiceIcons(
      title: AppStrings.weedControl,
      imageUrl: AppImages.weedcontrolImg,
    ),
  ];
  static List<ServiceIcons> securityData = [
    ServiceIcons(
      title: AppStrings.cameras,
      imageUrl: AppImages.camerasImg,
    ),
    ServiceIcons(
      title: AppStrings.burglarAlarm,
      imageUrl: AppImages.burglaralarmImg,
    ),
    ServiceIcons(
      title: AppStrings.sturdyLock,
      imageUrl: AppImages.sturdylocklImg,
    ),
  ];
  static List<ServiceIcons> carMaintenanceData = [
    ServiceIcons(
      title: AppStrings.carWasher,
      imageUrl: AppImages.carwasherImg,
    ),
    ServiceIcons(
      title: AppStrings.oilChange,
      imageUrl: AppImages.oilchangeImg,
    ),
    ServiceIcons(
      title: AppStrings.carBattery,
      imageUrl: AppImages.carbatteryImg,
    ),
  ];
  static List<ServiceIcons> handymanServicesData = [
    ServiceIcons(
      title: AppStrings.furniture,
      imageUrl: AppImages.furnitureImg,
    ),
    ServiceIcons(
      title: AppStrings.door,
      imageUrl: AppImages.doorImg,
    ),
    ServiceIcons(
      title: AppStrings.shelving,
      imageUrl: AppImages.shelvingImg,
    ),
  ];
  static List<ServiceIcons> paintingServiceData = [
    ServiceIcons(
      title: AppStrings.interior,
      imageUrl: AppImages.interiorImg,
    ),
    ServiceIcons(
      title: AppStrings.exterior,
      imageUrl: AppImages.exteriorImg,
    ),
    ServiceIcons(
      title: AppStrings.wall,
      imageUrl: AppImages.wallImg,
    ),
  ];
  static List<ServiceIcons> otherServiceData = [
    ServiceIcons(
      title: AppStrings.dishWash,
      imageUrl: AppImages.dishwashImg,
    ),
    ServiceIcons(
      title: AppStrings.loading,
      imageUrl: AppImages.loadingImg,
    ),
    ServiceIcons(
      title: AppStrings.cutting,
      imageUrl: AppImages.cuttingImg,
    ),
  ];

  static List<ServiceProvider> serviceProvider = [
    ServiceProvider(
      name: AppStrings.maskotKota,
      profession: AppStrings.plumber,
      rating: AppStrings.rating4,
      imageUrl: AppImages.plumberMaskotkotaImg,
    ),
    ServiceProvider(
      name: AppStrings.shams,
      profession: AppStrings.electrician,
      rating: AppStrings.rating4,
      imageUrl: AppImages.electricianSamsjanImg,
    ),
    ServiceProvider(
      name: AppStrings.mukesh,
      profession: AppStrings.carPenter,
      rating: AppStrings.rating47,
      imageUrl: AppImages.carpenterMukeshImg,
    ),
    ServiceProvider(
      name: AppStrings.maitri,
      profession: AppStrings.cleaner,
      rating: AppStrings.rating4,
      imageUrl: AppImages.cleanerMaitriImg,
    ),
    ServiceProvider(
      name: AppStrings.harsh,
      profession: AppStrings.mover,
      rating: AppStrings.rating47,
      imageUrl: AppImages.moverHarshImg,
    ),
  ];

  static List<ServiceProvider> electricianProvider = [
    ServiceProvider(
      name: AppStrings.emilyJani,
      profession: AppStrings.electrician,
      rating: AppStrings.rating4,
      imageUrl: AppImages.electricianEmilyJani,
    ),
    ServiceProvider(
      name: AppStrings.ethan,
      profession: AppStrings.electrician,
      rating: AppStrings.rating4,
      imageUrl: AppImages.electricianEthanlitaImg,
    ),
    ServiceProvider(
      name: AppStrings.jackson,
      profession: AppStrings.electrician,
      rating: AppStrings.rating49,
      imageUrl: AppImages.electricianJacksonImg,
    ),
    ServiceProvider(
      name: AppStrings.kunail,
      profession: AppStrings.electrician,
      rating: AppStrings.rating47,
      imageUrl: AppImages.electricianKunailImg,
    ),
    ServiceProvider(
      name: AppStrings.maitri,
      profession: AppStrings.electrician,
      rating: AppStrings.rating4,
      imageUrl: AppImages.electricianMaitriImg,
    ),
    ServiceProvider(
      name: AppStrings.mehram,
      profession: AppStrings.electrician,
      rating: AppStrings.rating47,
      imageUrl: AppImages.electricianMehramImg,
    ),
    ServiceProvider(
      name: AppStrings.raj,
      profession: AppStrings.electrician,
      rating: AppStrings.rating47,
      imageUrl: AppImages.electricianRajImg,
    ),
    ServiceProvider(
      name: AppStrings.rakesh,
      profession: AppStrings.electrician,
      rating: AppStrings.rating47,
      imageUrl: AppImages.electricianRakesImg,
    ),
    ServiceProvider(
      name: AppStrings.ronak,
      profession: AppStrings.electrician,
      rating: AppStrings.rating47,
      imageUrl: AppImages.electricianRonakImg,
    ),
    ServiceProvider(
      name: AppStrings.samsjan,
      profession: AppStrings.electrician,
      rating: AppStrings.rating46,
      imageUrl: AppImages.electricianSamsjanImg,
    ),
  ];

  static List<ServiceProvider> plumberProvider = [
    ServiceProvider(
      name: AppStrings.janvi,
      profession: AppStrings.plumber,
      imageUrl: AppImages.plumberJanaviImg,
      rating: AppStrings.rating28,
    ),
    ServiceProvider(
      name: AppStrings.mukesh,
      profession: AppStrings.plumber,
      imageUrl: AppImages.plumberMaskotkotaImg,
      rating: AppStrings.rating28,
    ),
    ServiceProvider(
      name: AppStrings.rajesh,
      profession: AppStrings.plumber,
      imageUrl: AppImages.plumberRajeshImg,
      rating: AppStrings.rating27,
    ),
  ];

  static List<ServiceProvider> carpenterProvider = [
    ServiceProvider(
      name: AppStrings.lokesh,
      profession: AppStrings.carPenter,
      imageUrl: AppImages.carpenterLokeshImg,
      rating: AppStrings.rating28,
    ),
    ServiceProvider(
      name: AppStrings.mukesh,
      profession: AppStrings.carPenter,
      imageUrl: AppImages.carpenterMukeshImg,
      rating: AppStrings.rating28,
    ),
  ];

  static List<ServiceProvider> painterProvider = [
    ServiceProvider(
      name: AppStrings.aashish,
      profession: AppStrings.painter,
      imageUrl: AppImages.painterAshishImg,
      rating: AppStrings.rating28,
    ),
    ServiceProvider(
      name: AppStrings.varun,
      profession: AppStrings.painter,
      imageUrl: AppImages.painterVarunImg,
      rating: AppStrings.rating27,
    ),
  ];
  static List<ServiceProvider> cleanerProvider = [
    ServiceProvider(
      name: AppStrings.maitri,
      profession: AppStrings.cleaner,
      imageUrl: AppImages.cleanerMaitriImg,
      rating: AppStrings.rating28,
    ),
    ServiceProvider(
      name: AppStrings.pinkesh,
      profession: AppStrings.cleaner,
      imageUrl: AppImages.cleanerPinkeshImg,
      rating: AppStrings.rating28,
    ),
  ];
  static List<ServiceProvider> locksmithProvider = [
    ServiceProvider(
      name: AppStrings.bhavesh,
      profession: AppStrings.locksmith,
      imageUrl: AppImages.locksmithBhaveshImg,
      rating: AppStrings.rating29,
    ),
    ServiceProvider(
      name: AppStrings.mayur,
      profession: AppStrings.locksmith,
      imageUrl: AppImages.locksmithMayurImg,
      rating: AppStrings.rating28,
    ),
  ];
  static List<ServiceProvider> moverProvider = [
    ServiceProvider(
      name: AppStrings.avi,
      profession: AppStrings.mover,
      imageUrl: AppImages.moverAviImg,
      rating: AppStrings.rating28,
    ),
    ServiceProvider(
      name: AppStrings.harsh,
      profession: AppStrings.mover,
      imageUrl: AppImages.moverHarshImg,
      rating: AppStrings.rating27,
    ),
  ];
}
