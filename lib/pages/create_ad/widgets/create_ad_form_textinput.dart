import 'package:flutter/material.dart';

class CreateAdFormTextInput extends StatelessWidget {
  final String label;
  final int lineNumber;
  final bool isRedStar;

  const CreateAdFormTextInput({
    Key? key,
    required this.label,
    this.lineNumber = 1,
    this.isRedStar = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: lineNumber,
      maxLines: lineNumber,
      decoration: InputDecoration(
        label: Container(
          child: RichText(text: TextSpan(children: [TextSpan(text: label), isRedStar ? TextSpan(text: " \*", style: TextStyle(color: Colors.orange)) : TextSpan()])),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), gapPadding: 0),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
