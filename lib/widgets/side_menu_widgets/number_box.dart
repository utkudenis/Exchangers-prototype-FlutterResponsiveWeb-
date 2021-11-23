import 'package:flutter/material.dart';

class NumberBox extends StatefulWidget {
  final bool colourCool;
  final String text;
  final Function? click;
  const NumberBox({Key? key, required this.colourCool, required this.text, this.click}) : super(key: key);

  @override
  _NumberBoxState createState() => _NumberBoxState();
}

class _NumberBoxState extends State<NumberBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.click as void Function()?,
      borderRadius: BorderRadius.circular(4.0),
      child: Container(
        margin: EdgeInsets.all(4),
        width: 45,
        height: 20,
        decoration: BoxDecoration(
            color: widget.colourCool ? Colors.redAccent : Colors.white,
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              color: !widget.colourCool ? Colors.redAccent : Colors.white,
            )),
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
