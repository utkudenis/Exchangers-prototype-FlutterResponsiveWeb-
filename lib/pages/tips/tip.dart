import 'package:flutter/material.dart';

class Tip extends StatelessWidget {
  final String circleText;
  final String tipText;
  final Color circleColor;
  const Tip({
    Key? key,
    required this.circleText,
    required this.tipText,
    this.circleColor = Colors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: CircleAvatar(
              radius: 30.0,
              backgroundColor: circleColor,
              child: Text(
                circleText,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white, width: 8),
              ),
              child: Text(tipText),
            ),
          ),
        ],
      ),
    );
  }
}
