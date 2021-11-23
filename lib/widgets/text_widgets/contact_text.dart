import 'package:flutter/material.dart';

class ContactText extends StatelessWidget {
  final String? text;
  const ContactText({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text!,
      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 15.0, height: 20.0 / 15.0),
    );
  }
}
