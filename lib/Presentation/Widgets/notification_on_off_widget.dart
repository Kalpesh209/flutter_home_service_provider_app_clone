import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_text_style.dart';

class CustomSwitchListTileWidget extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitchListTileWidget({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: SwitchListTile(
        title: Text(
          title,
          style: AppTextStyle.textStyle.copyWith(fontWeight: FontWeight.w500),
        ),
        value: value,
        onChanged: onChanged,
        activeColor: AppColors.blueColors,
        activeTrackColor: const Color.fromARGB(255, 160, 182, 240),
        inactiveThumbColor: Colors.grey,
        inactiveTrackColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 3.0, horizontal: 7.0),
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }
}
