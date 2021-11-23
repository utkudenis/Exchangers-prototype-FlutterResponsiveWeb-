import 'package:flutter/material.dart';

class FormHeadingText extends StatelessWidget {
  final String? text;
  const FormHeadingText({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(this.text!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, height: 36.0 / 24.0));
  }
}
