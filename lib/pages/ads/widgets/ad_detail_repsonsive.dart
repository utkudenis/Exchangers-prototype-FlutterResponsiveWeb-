import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/ads/main_widgets/contact_info.dart';
import 'package:flutter_exchangers_prototype/pages/ads/main_widgets/interior_features.dart';
import 'package:flutter_exchangers_prototype/pages/ads/main_widgets/vertical_home_properties.dart';
import 'package:flutter_exchangers_prototype/pages/ads/widgets/location_item.dart';
import 'package:flutter_exchangers_prototype/routing/routes.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/adress_text.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/deposit_text.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/description_text.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/price_text.dart';
import 'package:get/route_manager.dart';

class AdDetailResponsive extends StatefulWidget {
  const AdDetailResponsive({Key? key}) : super(key: key);

  @override
  _AdDetailResponsiveState createState() => _AdDetailResponsiveState();
}

class _AdDetailResponsiveState extends State<AdDetailResponsive> {
  double? width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    // print(width);
    return SingleChildScrollView(
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1280),
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: InkWell(
                  onTap: () => Get.toNamed(overviewPageRoute),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(width: 6),
                      DescriptionText(text: "Back to Listing"),
                    ],
                  ),
                ),
              ),

              Container(
                constraints: BoxConstraints(maxHeight: 520),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(width: 5.0, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(15.0) //                 <--- border radius here
                              ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            "assets/images/exampleAd.jpg",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: 400,
                        height: 520,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white, width: 8),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PriceText(text: "€550 / Month"),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.event_available_rounded,
                                          size: 24.0,
                                        ),
                                        SizedBox(width: 6),
                                        DescriptionText(text: "4-8-12 months")
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            AdressText(text: "Helsinki, 04200"),
                            SizedBox(height: 10),
                            VerticalHomeProporties(),
                            SizedBox(
                              height: 20,
                            ),
                            DepositText(text: "Description"),
                            SizedBox(
                              height: 10,
                            ),
                            DescriptionText(
                                text:
                                    "Lectus vitae ut pellentesque porta. Gravida posuere sit ac purus amet, maecenas. Lacus nisl, scelerisque aliquam lectus egestas. Vulputate eros, facilisi rhoncus gravida ullamcorper aliquam, penatibus. Massa viverra lorem varius ante vel sem."),
                            SizedBox(height: 30),
                            DepositText(text: "Closer Locations"),
                            SizedBox(
                              height: 20,
                            ),
                            LocationItem(icon: Icon(Icons.directions_bus_rounded), text: "Bus Station", distance: "200 m"),
                            LocationItem(icon: Icon(Icons.directions_subway_filled_rounded), text: "Metro Station", distance: "500 m"),
                            LocationItem(icon: Icon(Icons.flight_takeoff_rounded), text: "Airport", distance: "2 km"),
                            LocationItem(icon: Icon(Icons.shopping_cart_rounded), text: "Store", distance: "100 m"),
                            LocationItem(icon: Icon(Icons.location_city_rounded), text: "City Center", distance: "3 km"),
                          ],
                        )),
                  ],
                ),
              ),
              // interior features
              InteriorFeatures(),
              // Contact info
              ContactInfo(width: width),
            ],
          ),
        ),
      ),
    );
  }
}
