import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  final String? text;
  const DescriptionText({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text!, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 12.0, height: 16.0 / 12.0));
  }
}
