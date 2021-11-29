import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/widgets/create_ad_form_textinput.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/form_heading_text.dart';

class GeneralStep extends StatelessWidget {
  const GeneralStep({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          alignment: Alignment.topLeft,
          child: FormHeadingText(text: "Price - Size"),
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              child: CreateAdFormTextInput(label: "Price "),
            ),
            SizedBox(width: 30),
            Flexible(
              child: CreateAdFormTextInput(label: "Size "),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.topLeft,
          child: FormHeadingText(text: "General Information"),
        ),
        CreateAdFormTextInput(label: "Title "),
        SizedBox(height: 20),
        CreateAdFormTextInput(label: "Description ", lineNumber: 5),
        SizedBox(height: 20),
        Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              child: CreateAdFormTextInput(label: "Number of Room "),
            ),
            SizedBox(width: 30),
            Flexible(
              child: CreateAdFormTextInput(label: "Accommodation type "),
            )
          ],
        ),
      ],
    );
  }
}
