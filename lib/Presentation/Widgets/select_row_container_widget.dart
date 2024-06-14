import 'package:flutter/material.dart';

class SelectRowContainerWidget extends StatelessWidget {
  final String title;
  final String img;
  final bool select;
  const SelectRowContainerWidget({
    super.key,
    required this.title,
    required this.img,
    required this.select,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: (!select) ? Colors.transparent : const Color(0xFFE7F1FC),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
            color: (select) ? const Color(0xFF0773DA) : Colors.blue.shade100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text.rich(TextSpan(
                text: "From ",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: title,
                    style: (select)
                        ? const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue)
                        : const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                  )
                ])),
            Image.asset(img),
          ],
        ),
      ),
    );
  }
}
