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
          isMobileCreateAd ? SizedBox() : PriceText(text: "Interrior Features"),
          isMobileCreateAd ? SizedBox() : SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //section 1
              Column(
                children: [
                  FeatureItem(isChecked: false, text: "ADSL"),
                  FeatureItem(isChecked: true, text: "Alarm"),
                  FeatureItem(isChecked: false, text: "Balcony"),
                  FeatureItem(isChecked: false, text: "Built-in Kitchen"),
                  FeatureItem(isChecked: false, text: "Barbecue"),
                  FeatureItem(isChecked: true, text: "Furnished"),
                  FeatureItem(isChecked: true, text: "Laundry Room"),
                  FeatureItem(isChecked: false, text: "Air Conditioning"),
                  FeatureItem(isChecked: false, text: "Wallpaper"),
                  FeatureItem(isChecked: false, text: "Dressing Room"),
                  FeatureItem(isChecked: false, text: "Video Intercom"),
                  FeatureItem(isChecked: false, text: "Jaccuzzi"),
                  FeatureItem(isChecked: true, text: "Shower"),
                  FeatureItem(isChecked: false, text: "TV Satelitte"),
                  FeatureItem(isChecked: false, text: "Laminate"),
                ],
              ),
              Column(
                children: [
                  FeatureItem(isChecked: true, text: "Panel Door"),
                  FeatureItem(isChecked: true, text: "Marble Floor"),
                  FeatureItem(isChecked: false, text: "Blinds"),
                  FeatureItem(isChecked: true, text: "Sauna"),
                  FeatureItem(isChecked: false, text: "Parent Bathroom"),
                  FeatureItem(isChecked: false, text: "Parquet"),
                  FeatureItem(isChecked: true, text: "Satin Plaster"),
                  FeatureItem(isChecked: false, text: "Satin Color"),
                  FeatureItem(isChecked: true, text: "Ceramic Floor"),
                  FeatureItem(isChecked: false, text: "Spotlight"),
                  FeatureItem(isChecked: false, text: "Fireplace"),
                  FeatureItem(isChecked: true, text: "Terrace"),
                  FeatureItem(isChecked: false, text: "Cloakroom"),
                  FeatureItem(isChecked: true, text: "Underfloor Heating"),
                  FeatureItem(isChecked: false, text: "Double Gazing"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
