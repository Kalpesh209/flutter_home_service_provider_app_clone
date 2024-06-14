import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_home_service_provider_app_clone/Models/service_provider.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Screens/ServiceProvider/selected_service_provider.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/service_provider_card_widget.dart';

class ServiceProviderLayoutWidget extends StatelessWidget {
  final String title;
  final String icon;
  final List<ServiceProvider> listofdata;
  const ServiceProviderLayoutWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.listofdata,
  });

  navigateToAnotherScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SelectedServiceProviderScreen(
          title: title,
          listofdata: listofdata,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(icon),
                ),
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
            TextButton(
              onPressed: () {
                navigateToAnotherScreen(context);
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
            itemCount: listofdata.length,
            itemBuilder: (context, index) {
              return ServiceProviderCardWidget(
                name: listofdata[index].name.toString(),
                profession: listofdata[index].profession.toString(),
                rating: listofdata[index].rating.toString(),
                imageUrl: listofdata[index].imageUrl.toString(),
              );
            },
          ),
        ),
      ],
    );
  }
}
