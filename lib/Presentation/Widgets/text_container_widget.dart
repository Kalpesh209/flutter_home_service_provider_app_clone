import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_colors.dart';

class TextContainerWidget extends StatelessWidget {
  final String title;
  final bool select;
  const TextContainerWidget({
    super.key,
    required this.select,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: 100,
      decoration: BoxDecoration(
          color: (select) ? AppColors.blueColors : Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          )),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: (select) ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
