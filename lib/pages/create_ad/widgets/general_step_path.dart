import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import 'create_path_item.dart';
import 'create_path_spacer.dart';

class GerenalStepPath extends StatelessWidget {
  final List steps;
  final bool isMobile;
  final double? width;
  const GerenalStepPath({
    Key? key,
    required this.width,
    required this.steps,
    this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: RowSuper(
        innerDistance: -10.0,
        children: [
          // Step 1
          CreatePathItem(itemText: "General", iconName: Icons.text_snippet_rounded, isActive: steps[0]),
          CreatePathSpacer(isActive: steps[0], width: width! / (isMobile ? 8 : 6)),
          // Step 2
          CreatePathItem(itemText: "Location", iconName: Icons.location_on_outlined, isActive: steps[1]),
          CreatePathSpacer(isActive: steps[1], width: width! / (isMobile ? 18 : 12)),
          CreatePathSpacer(isActive: steps[2], width: width! / (isMobile ? 18 : 12)),
          // Step 3
          CreatePathItem(itemText: "Photos", iconName: Icons.add_a_photo_rounded, isActive: steps[2]),
          CreatePathSpacer(isActive: steps[2], width: width! / (isMobile ? 18 : 12)),
          CreatePathSpacer(isActive: steps[3], width: width! / (isMobile ? 18 : 12)),
          // Step 4
          CreatePathItem(itemText: "Features", iconName: Icons.settings, isActive: steps[3]),
          CreatePathSpacer(isActive: steps[3], width: width! / (isMobile ? 18 : 12)),
          CreatePathSpacer(isActive: steps[4], width: width! / (isMobile ? 18 : 12)),
          // Step 5
          CreatePathItem(itemText: "Contact", iconName: Icons.contact_mail_rounded, isActive: steps[4]),
        ],
      ),
    );
  }
}
