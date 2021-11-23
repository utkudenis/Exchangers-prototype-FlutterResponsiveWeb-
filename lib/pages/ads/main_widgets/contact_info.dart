import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/ads/widgets/contact_item.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/price_text.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/personPhoto.png',
                    width: 250,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 250,
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PriceText(text: "David Walter"),
                        ContactItem(
                          icon: Icon(Icons.phone_rounded),
                          text: "2548 856 7854",
                        ),
                        ContactItem(
                          icon: Image.asset('assets/icons/whatsapp.png', width: 24),
                          text: "2548 856 7854",
                        ),
                        ContactItem(
                          icon: Icon(Icons.mail_rounded),
                          text: "davidwalter.gmail.com",
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
              width! > 950
                  ? Image.asset(
                      'assets/images/map.png',
                      width: 350,
                    )
                  : SizedBox()
            ],
          ),
          width! < 950
              ? Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/map.png',
                    width: 450,
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
