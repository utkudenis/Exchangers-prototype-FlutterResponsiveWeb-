import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  final String? text;
  const PriceText({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(this.text!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, height: 22.0 / 16.0));
  }
}
