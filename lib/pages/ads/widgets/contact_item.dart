import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/contact_text.dart';

class ContactItem extends StatelessWidget {
  final Widget icon;
  final String text;
  const ContactItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: ContactText(text: text),
        )
      ],
    );
  }
}
