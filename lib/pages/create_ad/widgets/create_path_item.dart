import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/price_text.dart';

class CreatePathItem extends StatelessWidget {
  final String itemText;
  final IconData iconName;
  final bool isActive;
  const CreatePathItem({
    Key? key,
    required this.itemText,
    required this.iconName,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: isActive ? Colors.orange : Colors.grey, shape: BoxShape.circle),
          child: Icon(
            iconName,
            color: Colors.white,
          ),
        ),
        PriceText(
          text: itemText,
        )
      ],
    );
  }
}
