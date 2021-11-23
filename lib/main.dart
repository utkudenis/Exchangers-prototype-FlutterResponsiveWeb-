import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/constants/style.dart';
import 'package:flutter_exchangers_prototype/layout.dart';
import 'package:flutter_exchangers_prototype/pages/404/error.dart';
import 'package:flutter_exchangers_prototype/pages/authentication/authentication.dart';
import 'package:flutter_exchangers_prototype/pages/ads/ad_detail.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/create_ad.dart';
import 'package:flutter_exchangers_prototype/pages/tips/tips.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'routing/routes.dart';

void main() {
  runApp(MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      initialRoute: overviewPageRoute,
      unknownRoute: GetPage(name: '/not-found', page: () => PageNotFound(), transition: Transition.fadeIn),
      getPages: [
        GetPage(name: overviewPageRoute, page: () => SiteLayout()),
        GetPage(name: authenticationPageRoute, page: () => AuthenticationPage()),
        GetPage(name: adDetailPageRoute, page: () => AdDetailPage()),
        GetPage(name: createAdPageRoute, page: () => CreateAdPage()),
        GetPage(name: tipsPageRoute, page: () => TipsPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Exchangers',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.orange),
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primarySwatch: Colors.blue,
      ),
      // home: AuthenticationPage(),
    );
  }
}
