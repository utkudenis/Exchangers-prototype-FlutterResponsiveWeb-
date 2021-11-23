import 'package:flutter/material.dart';

class AdressText extends StatelessWidget {
  final String? text;
  const AdressText({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text!, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 14.0, height: 18.0 / 14.0));
  }
}
