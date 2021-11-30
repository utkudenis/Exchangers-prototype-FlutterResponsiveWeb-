import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/ads/widgets/feature_item.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/price_text.dart';

class InteriorFeaturesMobile extends StatelessWidget {
  final bool isMobileCreateAd;
  const InteriorFeaturesMobile({
    Key? key,
    this.isMobileCreateAd = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(isMobileCreateAd ? 0 : 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isMobileCreateAd ? SizedBox() : SizedBox(height: 20),
          isMobileCreateAd ? SizedBox() : PriceText(text: "Interior Features"),
          isMobileCreateAd ? SizedBox() : SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //section 1
              Column(
                children: [
                  FeatureItem(isChecked: true, text: "Furnished"),
                  FeatureItem(isChecked: false, text: "Fully Furnished"),
                  FeatureItem(isChecked: false, text: "Unfurnished"),
                  FeatureItem(isChecked: true, text: "Internet"),
                  FeatureItem(isChecked: true, text: "Sauna"),
                  FeatureItem(isChecked: false, text: "Balcony"),
                  FeatureItem(isChecked: true, text: "Laundry Room"),
                  FeatureItem(isChecked: false, text: "Air Conditioning"),
                  FeatureItem(isChecked: false, text: "Washing Machine"),
                  FeatureItem(isChecked: false, text: "Dryer"),
                  FeatureItem(isChecked: false, text: "Dishwasher"),
                  FeatureItem(isChecked: false, text: "Terrace"),
                  FeatureItem(isChecked: true, text: "Laminate Floor"),
                  FeatureItem(isChecked: false, text: "Wooden Floor"),
                  FeatureItem(isChecked: false, text: "Vinly Floor"),
                ],
              ),
              Column(
                children: [
                  FeatureItem(isChecked: true, text: "Tile Floor"),
                  FeatureItem(isChecked: true, text: "Marble Floor"),
                  FeatureItem(isChecked: false, text: "Shower"),
                  FeatureItem(isChecked: true, text: "Bathtub"),
                  FeatureItem(isChecked: false, text: "Stove"),
                  FeatureItem(isChecked: false, text: "Microwave"),
                  FeatureItem(isChecked: true, text: "Kettle"),
                  FeatureItem(isChecked: false, text: "Kitchen Tools"),
                  FeatureItem(isChecked: true, text: "Iron"),
                  FeatureItem(isChecked: false, text: "Iron Table"),
                  FeatureItem(isChecked: false, text: "Vacuumer"),
                  FeatureItem(isChecked: true, text: "Refrigerator"),
                  FeatureItem(isChecked: false, text: "Cloakroom"),
                  FeatureItem(isChecked: true, text: "Underfloor Heating"),
                  FeatureItem(isChecked: false, text: "Elevator"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
