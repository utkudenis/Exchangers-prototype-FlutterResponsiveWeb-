import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/overview/widgets/info_card_standart.dart';
import 'package:flutter_exchangers_prototype/routing/routes.dart';
import 'package:get/route_manager.dart';

class OverviewCardsResponsiveScreen extends StatefulWidget {
  @override
  State<OverviewCardsResponsiveScreen> createState() => _OverviewCardsResponsiveScreenState();
}

class _OverviewCardsResponsiveScreenState extends State<OverviewCardsResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Expanded(
        child: ListView.builder(
            padding: EdgeInsets.only(top: 5),
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InfoCardStandart(
                    price: "550€ monthly",
                    deposit: "500€",
                    title: "Room in Kannelmaki",
                    value: "Avaliable for 4-8-12 months rent",
                    avaliablefrom: "15.10.2021",
                    shortInfoIcons: ["3+1", "10", "150"],
                    onTap: () {
                      Get.offAndToNamed(adDetailPageRoute);
                    },
                    isActive: true,
                  ),
                  InfoCardStandart(
                    price: "550€ monthly",
                    deposit: "500€",
                    title: "Room in Kannelmaki",
                    value: "Avaliable for 4-8-12 months rent",
                    avaliablefrom: "15.10.2021",
                    shortInfoIcons: ["3+1", "10", "150"],
                    onTap: () {},
                    isActive: true,
                  ),
                  _width > 1040
                      ? InfoCardStandart(
                          price: "550€ monthly",
                          deposit: "500€",
                          title: "Room in Kannelmaki",
                          value: "Avaliable for 4-8-12 months rent",
                          avaliablefrom: "15.10.2021",
                          shortInfoIcons: ["3+1", "10", "150"],
                          onTap: () {},
                          isActive: true,
                        )
                      : SizedBox(),
                  _width > 1365
                      ? InfoCardStandart(
                          price: "550€ monthly",
                          deposit: "500€",
                          title: "Room in Kannelmaki",
                          value: "Avaliable for 4-8-12 months rent",
                          avaliablefrom: "15.10.2021",
                          shortInfoIcons: ["3+1", "10", "150"],
                          onTap: () {},
                          isActive: true,
                        )
                      : SizedBox()
                ],
              );
            }));
  }
}
