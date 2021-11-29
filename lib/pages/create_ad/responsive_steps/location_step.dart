import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/widgets/create_ad_form_textinput.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/form_heading_text.dart';

class LocationStep extends StatelessWidget {
  const LocationStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          alignment: Alignment.topLeft,
          child: FormHeadingText(text: "Location Information"),
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              child: CreateAdFormTextInput(label: "Province "),
            ),
            SizedBox(width: 20),
            Flexible(
              child: CreateAdFormTextInput(label: "District "),
            ),
            SizedBox(width: 20),
            Flexible(
              child: CreateAdFormTextInput(label: "Neighborhood "),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              child: CreateAdFormTextInput(label: "Dist. to Karamalmi "),
            ),
            SizedBox(width: 20),
            Flexible(
              child: CreateAdFormTextInput(label: "Dist. to Myyrmäki "),
            ),
            SizedBox(width: 20),
            Flexible(
              child: CreateAdFormTextInput(label: "Dist. to Arabia "),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.all(10),
          // constraints: BoxConstraints(maxHeight: 300),
          child: Image.asset(
            "assets/images/createAdMapExample.png",
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
