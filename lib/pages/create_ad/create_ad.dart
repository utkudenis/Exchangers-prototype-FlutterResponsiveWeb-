import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/helpers/reponsiveness.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/main_screens/create_ad_page_mobile.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/main_screens/create_ad_page_responsive.dart';
import 'package:flutter_exchangers_prototype/widgets/top_nav.dart';

class CreateAdPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey4 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey4,
      appBar: topNavigationBar(context, scaffoldKey4),
      body: Container(
        child: ResponsiveWidget.isLargeScreen(context) || ResponsiveWidget.isMediumScreen(context) ? CreateAdPageResponsive() : CreateAdPageMobile(),
      ),
    );
  }
}
