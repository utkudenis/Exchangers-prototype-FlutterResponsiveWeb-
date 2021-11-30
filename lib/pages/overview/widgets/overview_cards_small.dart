import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/routing/routes.dart';
import 'package:get/route_manager.dart';
import 'info_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            padding: EdgeInsets.only(top: 5),
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return InfoCardSmall(
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
              );
            }));
  }
}
