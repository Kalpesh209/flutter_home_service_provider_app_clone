import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_constants.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_images.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Screens/AccountSetUp/phone_number_screen.dart';

class PhoneNumberEnterWidget extends StatefulWidget {
  final List<MenuItem> items;
  final TextEditingController numberController;
  const PhoneNumberEnterWidget({
    super.key,
    required this.items,
    required this.numberController,
  });

  @override
  State<PhoneNumberEnterWidget> createState() => _PhoneNumberEnterState();
}

class _PhoneNumberEnterState extends State<PhoneNumberEnterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                AppImages.selectedImagePath,
              ),
            ),
            PopupMenuButton<MenuItem>(
              itemBuilder: (BuildContext context) {
                return widget.items.map((MenuItem item) {
                  return PopupMenuItem<MenuItem>(
                    value: item,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(item.imagePath),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              item.name,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        Text(
                          "+${item.number.toString()}",
                          style: const TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  );
                }).toList();
              },
              onSelected: (MenuItem selectedItem) {
                setState(() {
                  AppImages.selectedImagePath = selectedItem.imagePath;
                  AppConstants.selectedNumber = selectedItem.number;
                });
              },
              child: const Icon(Icons.keyboard_arrow_down),
            ),
            const VerticalDivider(
              thickness: 1,
              color: Colors.black,
            ),
            Text(
              "+${AppConstants.selectedNumber}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            SizedBox(
              height: 21,
              width: 175,
              child: TextFormField(
                controller: widget.numberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "9000088888",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
