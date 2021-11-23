import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/ads/main_widgets/interior_features.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/form_heading_text.dart';

class FeaturesStep extends StatefulWidget {
  const FeaturesStep({Key? key}) : super(key: key);

  @override
  _FeaturesStepState createState() => _FeaturesStepState();
}

class _FeaturesStepState extends State<FeaturesStep> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: FormHeadingText(text: "Interrior Features"),
        ),
        InteriorFeatures(isHeading: false)
      ],
    );
  }
}
