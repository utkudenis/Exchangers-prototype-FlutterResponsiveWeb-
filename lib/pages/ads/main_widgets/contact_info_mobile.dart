import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/ads/widgets/contact_item.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/price_text.dart';

class ContactInfoMobile extends StatelessWidget {
  const ContactInfoMobile({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          PriceText(text: "Contact Information"),
          SizedBox(height: 15),
          Image.asset(
            'assets/images/personPhoto.png',
            width: 300,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 20),
            height: 200,
            width: 240,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PriceText(text: "David Walter"),
                SizedBox(height: 20),
                ContactItem(
                  icon: Icon(Icons.phone_rounded),
                  text: "2548 856 7854",
                ),
                SizedBox(height: 20),
                ContactItem(
                  icon: Image.asset('assets/icons/whatsapp.png', width: 24),
                  text: "2548 856 7854",
                ),
                SizedBox(height: 20),
                ContactItem(
                  icon: Icon(Icons.mail_rounded),
                  text: "davidwalter.gmail.com",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/map.png',
                width: 450,
              ),
            ),
          )
        ],
      ),
    );
  }
}
