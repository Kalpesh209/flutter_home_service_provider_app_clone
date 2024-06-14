import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_images.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';

class GoogleOrFacebookWidget extends StatelessWidget {
  final String title;
  const GoogleOrFacebookWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final double lineSize = MediaQuery.of(context).size.width * 0.38;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: lineSize,
              child: const Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            const Text(
              "or",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: lineSize,
              child: const Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.grey, fontSize: 16),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            gfBox(
              AppStrings.google,
              AppImages.googleImg,
            ),
            gfBox(
              AppStrings.facebook,
              AppImages.facebookImg,
            ),
          ],
        ),
      ],
    );
  }

  Widget gfBox(String title, String img) {
    return Container(
      width: 160,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(img),
          const SizedBox(
            width: 12,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
