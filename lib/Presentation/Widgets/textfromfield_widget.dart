import 'package:flutter/material.dart';

class TextFromFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Color colors;
  const TextFromFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.colors,
  });

  @override
  State<TextFromFieldWidget> createState() => _TextFromFieldState();
}

class _TextFromFieldState extends State<TextFromFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.colors),
          borderRadius: BorderRadius.circular(6),
        ),
        hintText: widget.hintText,
        hintStyle:
            const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
      ),
    );
  }
}
