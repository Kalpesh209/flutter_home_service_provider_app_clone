import 'package:flutter/material.dart';

class TextFormFieldBoxUserWidget extends StatelessWidget {
  final String hintText;
  final Function(String?) validator;
  final IconData prefixIcon;
  final TextEditingController controller;

  const TextFormFieldBoxUserWidget({
    super.key,
    required this.hintText,
    required this.validator,
    required this.prefixIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(5.5),
        ),
        prefixIcon: Icon(prefixIcon, color: Colors.black),
        hintText: hintText,
        hintStyle:
            const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
      ),
      validator: (value) {
        return validator(value);
      },
    );
  }
}

class TextFromFieldBoxPassword extends StatefulWidget {
  final String hintText;
  final Function(String?) validator;
  final IconData prefixIcon;
  final TextEditingController controller;

  const TextFromFieldBoxPassword(
      {super.key,
      required this.hintText,
      required this.validator,
      required this.prefixIcon,
      required this.controller});

  @override
  State<TextFromFieldBoxPassword> createState() =>
      _TextFromFieldBoxPasswordState();
}

class _TextFromFieldBoxPasswordState extends State<TextFromFieldBoxPassword> {
  bool icons = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(5.5),
        ),
        prefixIcon: Icon(widget.prefixIcon, color: Colors.black),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              if (icons == true) {
                icons = false;
              } else {
                icons = true;
              }
            });
          },
          icon: (icons)
              ? const Icon(Icons.visibility_off, color: Colors.grey)
              : const Icon(Icons.visibility, color: Colors.grey),
        ),
        hintText: widget.hintText,
        hintStyle:
            const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
      ),
      validator: (value) {
        return widget.validator(value);
      },
    );
  }
}
