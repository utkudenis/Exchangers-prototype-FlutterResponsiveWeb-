import "package:flutter/material.dart";

import 'number_box.dart';

class RowNumberBox extends StatefulWidget {
  final List<String> boxtexts;
  final List<bool> valueBoolList;
  const RowNumberBox({Key? key, required this.boxtexts, required this.valueBoolList}) : super(key: key);

  @override
  _RowNumberBoxState createState() => _RowNumberBoxState();
}

class _RowNumberBoxState extends State<RowNumberBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: widget.boxtexts.length,
        itemBuilder: (BuildContext context, int index) {
          return NumberBox(
            colourCool: widget.valueBoolList[index],
            text: widget.boxtexts[index],
            click: () => setState(() {
              widget.valueBoolList[index] = !widget.valueBoolList[index];
            }),
          );
        },
      ),
    );
  }
}
