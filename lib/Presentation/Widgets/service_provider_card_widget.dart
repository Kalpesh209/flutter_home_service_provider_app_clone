import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_colors.dart';

class ServiceProviderCardWidget extends StatelessWidget {
  final String name;
  final String profession;
  final String rating;
  final String imageUrl;

  const ServiceProviderCardWidget({
    super.key,
    required this.name,
    required this.profession,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    double wSize = MediaQuery.of(context).size.width;
    return SizedBox(
      width: wSize * 0.43,
      height: 240,
      child: Card(
        margin: const EdgeInsets.only(right: 7, left: 7, bottom: 2),
        color: Colors.white,
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4 - 16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4 - 16,
                  height: 126,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                          image: AssetImage(imageUrl), fit: BoxFit.fill)),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  profession,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.blue,
                      size: 20,
                    ),
                    Text(
                      rating,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 20,
                      width:
                          (MediaQuery.of(context).size.width * 0.4 - 16) * 0.47,
                      decoration: BoxDecoration(
                          color: AppColors.blueColors,
                          borderRadius: BorderRadius.circular(6)),
                      child: const Center(
                          child: Text(
                        "Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
