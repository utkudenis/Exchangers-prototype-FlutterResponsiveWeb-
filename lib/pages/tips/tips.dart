import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/widgets/top_nav.dart';

class TipsPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey5 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey5,
      appBar: topNavigationBar(context, scaffoldKey5),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [Text("Tips Page")],
          ),
        ),
      ),
    );
  }
}
