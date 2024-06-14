import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_text_style.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/button_style_widget.dart';

class PaidBoxStyleWidget extends StatelessWidget {
  final String icons;
  final String title;
  final double amount;
  final String date;
  final String name;
  final bool pay;
  const PaidBoxStyleWidget({
    super.key,
    required this.pay,
    required this.amount,
    required this.date,
    required this.name,
    required this.icons,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 214, 226, 236),
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(icons),
              const SizedBox(
                width: 12,
              ),
              Text(
                title,
                style: AppTextStyle.textStyle,
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(AppStrings.amountPay),
              Text(
                "\$$amount",
                style: AppTextStyle.textStyle.copyWith(color: Colors.blue),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(AppStrings.bookingDate),
              Text(date),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(AppStrings.plumberName),
              Text(
                name,
                style: AppTextStyle.textStyle
                    .copyWith(color: Colors.blue, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          (pay)
              ? const ButtonStyleWidget(
                  title: AppStrings.payNow,
                  colors: AppColors.blueColors,
                )
              : const SizedBox(
                  height: 1,
                ),
        ],
      ),
    );
  }
}
