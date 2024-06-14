import 'package:flutter/material.dart';

class SignupCheckBoxWidget extends StatefulWidget {
  const SignupCheckBoxWidget({super.key});

  @override
  State<SignupCheckBoxWidget> createState() => _SignupCheckBoxState();
}

class _SignupCheckBoxState extends State<SignupCheckBoxWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Checkbox(
          value: isChecked,
          onChanged: (newValue) {
            setState(() {
              isChecked = newValue!;
            });
          },
          activeColor: Colors.blue,
        ),
        const Text.rich(
          TextSpan(
              text: "I Agree With Fixit's ",
              style: TextStyle(fontSize: 16),
              children: [
                TextSpan(
                  text: "Term ",
                  style: TextStyle(color: Colors.blue),
                ),
                TextSpan(
                  text: "& ",
                ),
                TextSpan(
                  text: "Condition",
                  style: TextStyle(color: Colors.blue),
                ),
              ]),
        ),
      ],
    );
  }
}
