import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/ads/main_widgets/interior_features_mobile.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/form_heading_text.dart';

class FeaturesStepMobile extends StatefulWidget {
  const FeaturesStepMobile({Key? key}) : super(key: key);

  @override
  _FeaturesStepMobileState createState() => _FeaturesStepMobileState();
}

class _FeaturesStepMobileState extends State<FeaturesStepMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: FormHeadingText(text: "Interrior Features"),
        ),
        InteriorFeaturesMobile(isMobileCreateAd: true)
      ],
    );
  }
}
