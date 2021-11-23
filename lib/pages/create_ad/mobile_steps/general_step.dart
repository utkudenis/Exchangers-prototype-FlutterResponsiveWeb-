import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/widgets/create_ad_form_textinput.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/form_heading_text.dart';

class GeneralStepMobile extends StatelessWidget {
  const GeneralStepMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          alignment: Alignment.topLeft,
          child: FormHeadingText(text: "Category"),
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              child: CreateAdFormTextInput(label: "Housing "),
            ),
            SizedBox(width: 30),
            Flexible(
              child: CreateAdFormTextInput(label: "Sale "),
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
              child: CreateAdFormTextInput(label: "Number of Livingroom "),
            )
          ],
        ),
      ],
    );
  }
}
