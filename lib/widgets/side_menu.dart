import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/constants/style.dart';
import 'package:flutter_exchangers_prototype/helpers/reponsiveness.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/widgets/create_ad_form_textinput.dart';
import 'package:flutter_exchangers_prototype/widgets/side_menu_widgets/expansion_header.dart';
import 'package:flutter_exchangers_prototype/widgets/side_menu_widgets/menu_item.dart';
import 'package:flutter_exchangers_prototype/widgets/side_menu_widgets/row_number_box.dart';

import 'custom_text.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

// it should be created if there is more than one scroll in one page!!
ScrollController sideController = ScrollController();

class _SideMenuState extends State<SideMenu> {
  List<bool> _isOpen = [true, true, true, true, false, false, false, false];
  List<bool> _distanceCampusList = [false, true, false, false];
  List<bool> _distanceCityCenterList = [false, false, false, false, true, false, false, false];
  List<bool> _buildingAge = [false, false, true, false, false, true, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: light,
      child: ListView(
        controller: sideController,
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Image.asset(
                    "assets/icons/logo.png",
                  ),
                ),
                CustomText(
                  text: "Exchangers",
                  color: lightGrey,
                  size: 20,
                  weight: FontWeight.bold,
                )
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white, width: 8),
            ),
            child: ExpansionPanelList(
              expandedHeaderPadding: EdgeInsets.all(8),
              expansionCallback: (i, isOpen) {
                setState(() {
                  _isOpen[i] = !isOpen;
                });
              },
              children: [
                ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: (context, isOpen) {
                      return ExpansionHeader(
                        header: "Furnished Status",
                      );
                    },
                    body: Column(
                      children: [
                        MenuItem(isChecked: false, text: "Unfurnished"),
                        MenuItem(isChecked: true, text: "Basic"),
                        MenuItem(isChecked: false, text: "Furnished"),
                        MenuItem(isChecked: false, text: "Fully Furnished"),
                      ],
                    ),
                    isExpanded: _isOpen[0]),
                ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: (context, isOpen) {
                      return ExpansionHeader(
                        header: "Price",
                      );
                    },
                    body: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Flex(
                        direction: Axis.horizontal,
                        children: [
                          Flexible(flex: 4, child: Container(height: 30, child: CreateAdFormTextInput(label: "Min.", isRedStar: false))),
                          SizedBox(width: 4),
                          Flexible(flex: 4, child: Container(height: 30, child: CreateAdFormTextInput(label: "Max.", isRedStar: false))),
                        ],
                      ),
                    ),
                    isExpanded: _isOpen[1]),
                ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: (context, isOpen) {
                      return ExpansionHeader(
                        header: "Size m\u00B2",
                      );
                    },
                    body: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Flex(
                        direction: Axis.horizontal,
                        children: [
                          Flexible(flex: 4, child: Container(height: 30, child: CreateAdFormTextInput(label: "Min.", isRedStar: false))),
                          SizedBox(width: 4),
                          Flexible(flex: 4, child: Container(height: 30, child: CreateAdFormTextInput(label: "Max.", isRedStar: false))),
                        ],
                      ),
                    ),
                    isExpanded: _isOpen[2]),
                ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: (context, isOpen) {
                      return ExpansionHeader(header: "Distance to Campus (km)");
                    },
                    body: Column(
                      children: [
                        RowNumberBox(boxtexts: ["<1", "1-2", "2-4", "4+"], valueBoolList: _distanceCampusList)
                      ],
                    ),
                    isExpanded: _isOpen[3]),
                ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: (context, isOpen) {
                      return ExpansionHeader(header: "Distance to Citycenter (km)");
                    },
                    body: Column(
                      children: [
                        RowNumberBox(boxtexts: ["<1", "1-2", "2-4", "4"], valueBoolList: _distanceCampusList.sublist(0, 4)),
                        RowNumberBox(boxtexts: ["4-6", "6-8", "8-10", "10+"], valueBoolList: _distanceCityCenterList.sublist(4, 8)),
                      ],
                    ),
                    isExpanded: _isOpen[4]),
                ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: (context, isOpen) {
                      return ExpansionHeader(header: "Building Age");
                    },
                    body: Column(
                      children: [
                        RowNumberBox(boxtexts: ["0", "1", "2", "3"], valueBoolList: _buildingAge.sublist(0, 4)),
                        RowNumberBox(boxtexts: ["4", "5-10", "11-15", "16-20"], valueBoolList: _buildingAge.sublist(4, 8)),
                        RowNumberBox(boxtexts: ["21-25", "26-30", "31-35", "35+"], valueBoolList: _buildingAge.sublist(8, 12)),
                      ],
                    ),
                    isExpanded: _isOpen[5]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
