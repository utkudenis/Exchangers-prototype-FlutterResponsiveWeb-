import 'package:dotted_border/dotted_border.dart';
import "package:flutter/material.dart";
import 'package:flutter_exchangers_prototype/widgets/text_widgets/deposit_text.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/description_text.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/form_heading_text.dart';

class PhotosStepMobile extends StatelessWidget {
  const PhotosStepMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          alignment: Alignment.topLeft,
          child: FormHeadingText(text: "Add Photos"),
        ),
        SizedBox(height: 50),
        Image.asset('assets/images/photos.png'),
        SizedBox(height: 20),
        DepositText(text: "You can add 30 photos to your ad"),
        SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(shadowColor: Colors.red[200], padding: EdgeInsets.zero),
          onPressed: () {
            print("Upload images clicked");
          },
          child: Container(
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(4)),
            margin: EdgeInsets.all(10),
            width: 225,
            height: 48,
            child: Center(
              child: Text("Upload from computer", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        SizedBox(height: 30),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: DottedBorder(
            dashPattern: [4],
            strokeWidth: 1,
            color: Colors.grey,
            child: Container(
              constraints: BoxConstraints.expand(height: 100),
              color: Colors.grey[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add, color: Colors.red),
                  DescriptionText(text: "You can add 30 photos to your add"),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
