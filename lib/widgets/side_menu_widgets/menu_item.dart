import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final bool isChecked;
  final String text;
  const MenuItem({Key? key, required this.isChecked, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Checkbox(
          value: isChecked,
          hoverColor: Colors.redAccent[100],
          splashRadius: 14.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2), side: BorderSide(width: 0.5, color: Colors.grey, style: BorderStyle.none)),
          onChanged: (bool? value) {},
          activeColor: Colors.redAccent,
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12.0, height: 16.0 / 12.0),
            overflow: TextOverflow.fade,
            softWrap: false,
            maxLines: 1,
          ),
        ),
      ],
    ));
  }
}
