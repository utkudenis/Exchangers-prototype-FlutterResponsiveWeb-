import 'package:flutter/material.dart';

class FiltersGeneral extends StatefulWidget {
  @override
  State<FiltersGeneral> createState() => _FiltersGeneralState();
}

class _FiltersGeneralState extends State<FiltersGeneral> {
  String? dropdownValuePrice = '200-250';
  String? dropdownValueCity = 'Helsinki';
  String? dropdownValuePropertType = 'Room';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white, width: 8),
      ),
      margin: EdgeInsets.only(top: 56),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Property Type

          Row(children: [
            Icon(Icons.hotel_rounded),
            SizedBox(
              width: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              )),
              child: DropdownButton<String>(
                underline: SizedBox(),
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
            ),
          ]),

          // City
          Row(children: [
            Icon(Icons.location_on),
            SizedBox(
              width: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              )),
              child: DropdownButton<String>(
                underline: SizedBox(),
                borderRadius: BorderRadius.circular(10),
                value: dropdownValueCity,
                icon: Icon(
                  Icons.arrow_drop_down,
                ),
                iconSize: 24,
                elevation: 16,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValueCity = newValue;
                  });
                },
                items: <String>['Helsinki', 'Turku', 'Tampere', 'Oulu'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ]),
          // Price Range
          Row(children: [
            Icon(Icons.euro),
            SizedBox(
              width: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              )),
              child: DropdownButton<String>(
                underline: SizedBox(),
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
            ),
          ]),
          // Search
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 200,
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter keyword",
                  hintText: "room in Kluuvi",
                  icon: Icon(
                    Icons.search_sharp,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
