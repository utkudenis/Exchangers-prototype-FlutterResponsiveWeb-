import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/routing/routes.dart';
import 'package:flutter_exchangers_prototype/widgets/custom_text.dart';
import 'package:get/get.dart';

class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/error.png",
              width: 350,
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => Get.offAllNamed(overviewPageRoute),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Page not found",
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                  CustomText(
                    text: "Click to Return Main Page",
                    size: 16,
                    weight: FontWeight.w200,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
