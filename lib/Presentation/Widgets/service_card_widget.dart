import 'package:flutter/material.dart';

class ServiceCardWidget extends StatelessWidget {
  final String title;
  final String imageUrl;

  const ServiceCardWidget({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
        height: 100,
        width: 125,
        child: Card(
          color: Colors.white,
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              Image.asset(imageUrl),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
