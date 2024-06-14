import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/Models/service_icon.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/service_card_widget.dart';

class ServiceCardLayoutWidget extends StatelessWidget {
  final String title;
  final List<ServiceIcons> listofdata;
  const ServiceCardLayoutWidget({
    super.key,
    required this.title,
    required this.listofdata,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listofdata.length,
              itemBuilder: (context, index) {
                return ServiceCardWidget(
                  title: listofdata[index].title.toString(),
                  imageUrl: listofdata[index].imageUrl.toString(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
