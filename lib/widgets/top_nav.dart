import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/constants/style.dart';
import 'package:flutter_exchangers_prototype/helpers/reponsiveness.dart';
import 'package:flutter_exchangers_prototype/routing/routes.dart';
import 'package:get/route_manager.dart';
import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? InkWell(
              onTap: () => Get.offAllNamed(overviewPageRoute),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Image.asset(
                      "assets/icons/logo.png",
                      width: 40,
                    ),
                  ),
                ],
              ),
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                key.currentState!.openDrawer();
              }),
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomText(
              text: "Exchangers",
              color: lightGrey,
              size: 20,
              weight: FontWeight.bold,
            ),
            Expanded(
              child: SizedBox(),
            ),
            TextButton(
                style: TextButton.styleFrom(shadowColor: Colors.red[200], padding: EdgeInsets.zero),
                onPressed: () => {Get.toNamed(createAdPageRoute)},
                child: Container(
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(4)),
                    padding: EdgeInsets.all(8),
                    height: 36,
                    child: Center(child: Text(ResponsiveWidget.isSmallScreen(context) ? "Create" : "Create an Ad", style: TextStyle(color: Colors.white))))),
            Row(
              children: [
                Stack(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: dark.withOpacity(.7),
                        ),
                        onPressed: () {}),
                    Positioned(
                      top: 7,
                      right: 7,
                      child: Container(
                        width: 12,
                        height: 12,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(color: active, borderRadius: BorderRadius.circular(30), border: Border.all(color: light, width: 2)),
                      ),
                    )
                  ],
                ),
                !ResponsiveWidget.isSmallScreen(context)
                    ? Row(
                        children: [
                          Container(
                            width: 1,
                            height: 22,
                            color: lightGrey,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 24, right: 16),
                            child: CustomText(
                              text: "Utku Deniz Arpacı",
                              color: lightGrey,
                            ),
                          )
                        ],
                      )
                    : SizedBox(
                        width: 1,
                      ),
                Container(
                  decoration: BoxDecoration(color: active.withOpacity(.5), borderRadius: BorderRadius.circular(30)),
                  child: InkWell(
                    onTap: () {
                      Get.offAndToNamed(authenticationPageRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.all(2),
                      child: CircleAvatar(
                        backgroundColor: light,
                        child: Icon(
                          Icons.person_outline,
                          color: dark,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      iconTheme: IconThemeData(color: dark),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
