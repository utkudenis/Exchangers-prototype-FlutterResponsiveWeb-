import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/deposit_text.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/description_text.dart';

class LocationItem extends StatelessWidget {
  final Icon icon;
  final String text;
  final String distance;
  const LocationItem({Key? key, required this.icon, required this.text, required this.distance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [icon, SizedBox(width: 10), DescriptionText(text: text)],
          ),
          DepositText(text: distance),
        ],
      ),
    );
  }
}
