import 'package:flutter/material.dart';

class DropdownMenuBoxWidget extends StatefulWidget {
  final List<String> itemList;
  final String hintText;
  const DropdownMenuBoxWidget({
    super.key,
    required this.itemList,
    required this.hintText,
  });

  @override
  State<DropdownMenuBoxWidget> createState() => _DropdownMenuBoxState();
}

class _DropdownMenuBoxState extends State<DropdownMenuBoxWidget> {
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Center(
        child: DropdownButtonFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          borderRadius: BorderRadius.circular(6),
          hint: Text(widget.hintText),
          value: selectedItem,
          onChanged: (value) {
            setState(() {
              selectedItem = value;
            });
          },
          items: widget.itemList.map((String service) {
            return DropdownMenuItem(
              value: service,
              child: Text(
                service,
                style: const TextStyle(color: Colors.black54),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
