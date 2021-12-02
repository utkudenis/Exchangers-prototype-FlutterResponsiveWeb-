import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
  final double width;
  final bool isChecked;
  final String text;
  const FeatureItem({Key? key, required this.isChecked, required this.text, this.width = 150}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        child: Row(
          children: [
            Checkbox(
              value: isChecked,
              hoverColor: Colors.orangeAccent[100],
              splashRadius: 14.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2), side: BorderSide(width: 0.5, color: Colors.grey, style: BorderStyle.none)),
              onChanged: (bool? value) {},
              activeColor: Colors.orangeAccent,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12.0, height: 16.0 / 12.0),
            ),
          ],
        ));
  }
}
