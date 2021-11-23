import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/overview/overview.dart';
import 'package:flutter_exchangers_prototype/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 1, child: SideMenu()),
        Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: OverviewPage(),
            ))
      ],
    );
  }
}
