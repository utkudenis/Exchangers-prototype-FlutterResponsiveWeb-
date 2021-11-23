import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/helpers/reponsiveness.dart';
import 'package:flutter_exchangers_prototype/pages/overview/overview.dart';
import 'package:flutter_exchangers_prototype/widgets/large_screen.dart';
import 'package:flutter_exchangers_prototype/widgets/side_menu.dart';
import 'widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey2 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey2,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey2),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Drawer(
          child: SideMenu(),
        ),
      ),
      body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: OverviewPage(),
          )),
    );
  }
}
