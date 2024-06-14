import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_constants.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/button_style_widget.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/notification_on_off_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationsState();
}

class _NotificationsState extends State<NotificationScreen> {
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
          AppStrings.notification,
          style: TextStyle(
            color: AppColors.blueColors,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            CustomSwitchListTileWidget(
              title: AppStrings.generalNotification,
              value: AppConstants.generalNotification,
              onChanged: (bool value) {
                setState(() {
                  AppConstants.generalNotification = value;
                });
              },
            ),
            CustomSwitchListTileWidget(
              title: AppStrings.sound,
              value: AppConstants.sound,
              onChanged: (bool value) {
                setState(() {
                  AppConstants.sound = value;
                });
              },
            ),
            CustomSwitchListTileWidget(
              title: AppStrings.vibrate,
              value: AppConstants.vibrate,
              onChanged: (bool value) {
                setState(() {
                  AppConstants.vibrate = value;
                });
              },
            ),
            CustomSwitchListTileWidget(
              title: AppStrings.newService,
              value: AppConstants.newService,
              onChanged: (bool value) {
                setState(() {
                  AppConstants.newService = value;
                });
              },
            ),
            CustomSwitchListTileWidget(
              title: AppStrings.payment,
              value: AppConstants.payment,
              onChanged: (bool value) {
                setState(() {
                  AppConstants.payment = value;
                });
              },
            ),
            const Spacer(),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const ButtonStyleWidget(
                  title: AppStrings.save,
                  colors: AppColors.blueColors,
                ))
          ],
        ),
      ),
    );
  }
}
