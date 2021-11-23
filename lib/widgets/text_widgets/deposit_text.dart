import 'package:flutter/material.dart';

class DepositText extends StatelessWidget {
  final String? text;
  const DepositText({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text!,
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0, height: 20.0 / 15.0),
    );
  }
}
