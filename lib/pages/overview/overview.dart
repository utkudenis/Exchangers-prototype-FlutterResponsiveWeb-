import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/helpers/reponsiveness.dart';
import 'package:flutter_exchangers_prototype/pages/overview/widgets/filters_general.dart';
import 'package:flutter_exchangers_prototype/pages/overview/widgets/filters_mobile.dart';
import 'package:flutter_exchangers_prototype/pages/overview/widgets/overview_cards_responsive.dart';
import 'package:flutter_exchangers_prototype/pages/overview/widgets/overview_cards_small.dart';

class OverviewPage extends StatefulWidget {
  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveWidget.isLargeScreen(context) || ResponsiveWidget.isMediumScreen(context) ? FiltersGeneral() : FiltersMobile(),
        ResponsiveWidget.isLargeScreen(context) || ResponsiveWidget.isMediumScreen(context) ? OverviewCardsResponsiveScreen() : OverviewCardsSmallScreen()
      ],
    );
  }
}
