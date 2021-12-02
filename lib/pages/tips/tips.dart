import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/tips/tip.dart';
import 'package:flutter_exchangers_prototype/widgets/custom_text.dart';
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white, width: 8),
                  ),
                  child: Text(
                    "5 Tips from Exchangers",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tip(
                  circleText: "Tip 1",
                  circleColor: Colors.yellow,
                  tipText: "Carefully consider what information you want to make public in your ad. Do not share anything that you are not comfortable with!",
                ),
                Tip(
                  circleText: "Tip 2",
                  circleColor: Colors.orange,
                  tipText: "Searching for something specific? Our versatile filters will help you find just what you need!",
                ),
                Tip(
                  circleText: "Tip 3",
                  circleColor: Colors.red,
                  tipText: "Renting out your apartment while you’re out of country is a great way to avoid double rent. We are here to help you with that!",
                ),
                Tip(
                  circleText: "Tip 4",
                  circleColor: Colors.green,
                  tipText: "Make sure to exchange contacts with your subtenant before you leave.",
                ),
                Tip(
                  circleText: "Tip 5",
                  circleColor: Colors.blue,
                  tipText: "Exchange is stress-free when you know everything is fine back home. Make sure to go over terms of living in your apartment with your subtenant.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
