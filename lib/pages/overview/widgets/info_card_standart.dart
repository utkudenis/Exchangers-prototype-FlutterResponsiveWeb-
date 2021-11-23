import 'package:flutter/material.dart';

class InfoCardStandart extends StatelessWidget {
  final String title;
  final String value;
  final String? price;
  final String? deposit;
  final String? avaliablefrom;
  final bool isActive;
  final List<String>? shortInfoIcons;
  final Function onTap;

  const InfoCardStandart({Key? key, required this.title, required this.value, this.isActive = false, required this.onTap, this.price, this.deposit, this.avaliablefrom, this.shortInfoIcons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap as void Function()?,
        child: Container(
            margin: EdgeInsets.all(10),
            height: 300,
            //width: 200,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white, width: 8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/exampleAd.png",
                  height: 150,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Rent: $price",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, height: 22.0 / 16.0),
                    ),
                    Text(
                      "Deposit: $deposit",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0, height: 20.0 / 15.0),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(title, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0, height: 20.0 / 16.0)),
                    SizedBox(
                      height: 2,
                    ),
                    Text("Avaliable: $avaliablefrom", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 12.0, height: 16.0 / 12.0)),
                    Text("$value", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 12.0, height: 16.0 / 12.0)),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // home
                        Icon(
                          Icons.home,
                          size: 16.0,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          shortInfoIcons![0],
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0, height: 16.0 / 12.0),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        // stairs
                        Icon(
                          Icons.stairs,
                          size: 16.0,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          shortInfoIcons![1],
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0, height: 16.0 / 12.0),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )));
  }
}
