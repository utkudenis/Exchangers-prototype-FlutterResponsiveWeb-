import 'package:flutter/material.dart';

class CreatePathSpacer extends StatelessWidget {
  final double width;
  final bool isActive;
  const CreatePathSpacer({
    Key? key,
    required this.width,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      color: isActive ? Colors.red : Colors.grey,
      height: 2,
      width: width,
    );
  }
}
