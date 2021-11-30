import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/description_text.dart';

class VerticalHomeProporties extends StatelessWidget {
  const VerticalHomeProporties({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            DescriptionText(text: "Bedroom"),
            Row(
              children: [
                Icon(
                  Icons.bed_rounded,
                  size: 32.0,
                ),
                SizedBox(width: 6),
                DescriptionText(text: "1")
              ],
            )
          ],
        ),
        Column(
          children: [
            DescriptionText(text: "Bathroom"),
            Row(
              children: [
                Icon(
                  Icons.bathtub_rounded,
                  size: 32.0,
                ),
                SizedBox(width: 6),
                DescriptionText(text: "1")
              ],
            )
          ],
        ),
        Column(
          children: [
            DescriptionText(text: "Room Size"),
            Row(
              children: [
                Icon(
                  Icons.home_rounded,
                  size: 32.0,
                ),
                SizedBox(width: 4),
                DescriptionText(text: "15 m²")
              ],
            )
          ],
        )
      ],
    );
  }
}
