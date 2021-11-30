import 'package:flutter/material.dart';

class FiltersMobile extends StatefulWidget {
  @override
  State<FiltersMobile> createState() => _FiltersMobileState();
}

class _FiltersMobileState extends State<FiltersMobile> {
  String? dropdownValuePrice = '200-250';
  String? dropdownValueCity = 'Helsinki';
  String? dropdownValuePropertType = 'Shared Room';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 56),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Property Type
            Flexible(
                child: Row(children: [
              Icon(Icons.hotel_rounded),
              SizedBox(
                width: 2,
              ),
              DropdownButton<String>(
                value: dropdownValuePropertType,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 24,
                elevation: 16,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValuePropertType = newValue;
                  });
                },
                items: <String>['Room', 'Shared Room', 'Apartment'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ])),
            // City
            Flexible(
                child: Row(children: [
              Icon(Icons.location_on),
              SizedBox(
                width: 2,
              ),
              DropdownButton<String>(
                value: dropdownValueCity,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 24,
                elevation: 16,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValueCity = newValue;
                  });
                },
                items: <String>['Helsinki', 'Vantaa', 'Espoo', 'Turku', 'Tampere', 'Oulu'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ])),
            // Price Range
            Flexible(
                child: Row(children: [
              Icon(Icons.euro),
              SizedBox(
                width: 2,
              ),
              DropdownButton<String>(
                value: dropdownValuePrice,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 24,
                elevation: 16,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValuePrice = newValue;
                  });
                },
                items: <String>['<200', '200-250', '250-300', '300-350', '350-400', '400-450', '450-500', '500>'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
