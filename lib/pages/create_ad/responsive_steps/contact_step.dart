import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/ads/widgets/feature_item.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/widgets/create_ad_form_textinput.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/deposit_text.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/form_heading_text.dart';

class ContactStep extends StatelessWidget {
  const ContactStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          alignment: Alignment.topLeft,
          child: FormHeadingText(text: "Contact"),
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              child: CreateAdFormTextInput(
                label: "Name ",
              ),
            ),
            SizedBox(width: 30),
            Flexible(
              child: CreateAdFormTextInput(label: "Email "),
            )
          ],
        ),
        SizedBox(height: 20),
        Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              child: CreateAdFormTextInput(
                label: "Primary Phone Number",
                isRedStar: false,
              ),
            ),
            SizedBox(width: 30),
            Flexible(
              child: CreateAdFormTextInput(
                label: "Secondary Phone Number ",
                isRedStar: false,
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              child: DepositText(text: "I want to be informed about all announcements and campaigns via commercial electronic mail."),
            ),
            SizedBox(width: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FeatureItem(
                  isChecked: true,
                  text: "E-mail",
                  width: 100,
                ),
                FeatureItem(
                  isChecked: false,
                  text: "SMS",
                  width: 100,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
