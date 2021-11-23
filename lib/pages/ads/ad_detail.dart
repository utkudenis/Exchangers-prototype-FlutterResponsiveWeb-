import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/helpers/reponsiveness.dart';
import 'package:flutter_exchangers_prototype/pages/ads/widgets/ad_detail_mobile.dart';
import 'package:flutter_exchangers_prototype/pages/ads/widgets/ad_detail_repsonsive.dart';
import 'package:flutter_exchangers_prototype/widgets/top_nav.dart';

class AdDetailPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey3 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey3,
      appBar: topNavigationBar(context, scaffoldKey3),
      body: Container(
        child: ResponsiveWidget.isLargeScreen(context) || ResponsiveWidget.isMediumScreen(context) ? AdDetailResponsive() : AdDetailMobile(),
      ),
    );
  }
}
