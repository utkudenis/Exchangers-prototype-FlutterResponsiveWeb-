import 'package:flutter/material.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/responsive_steps/contact_step.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/responsive_steps/features_step.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/responsive_steps/general_step.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/responsive_steps/location_step.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/responsive_steps/photos_step.dart';
import 'package:flutter_exchangers_prototype/pages/create_ad/widgets/general_step_path.dart';
import 'package:flutter_exchangers_prototype/widgets/text_widgets/description_text.dart';
import 'package:get/route_manager.dart';

class CreateAdPageResponsive extends StatefulWidget {
  const CreateAdPageResponsive({Key? key}) : super(key: key);

  @override
  _CreateAdPageResponsiveState createState() => _CreateAdPageResponsiveState();
}

List<bool> steps = [true, false, false, false, false];
int currentStep = 0;
void stepCounter({bool isBack = false}) {
  if (isBack) {
    if (currentStep > 0) {
      steps[currentStep] = false;
      currentStep--;
    }
  } else {
    if (currentStep < 4) {
      currentStep++;
      steps[currentStep] = true;
    }
  }
  // inorder to render new component
  stepsWidgets();
}

Widget stepsWidgets() {
  switch (currentStep) {
    case 0:
      return GeneralStep();
    case 1:
      return LocationStep();
    case 2:
      return PhotosStep();
    case 3:
      return FeaturesStep();
    case 4:
      return ContactStep();
    default:
      return GeneralStep();
  }
}

class _CreateAdPageResponsiveState extends State<CreateAdPageResponsive> {
  double? width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width - 80.0;

    return SingleChildScrollView(
      child: Center(
        child: Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.symmetric(horizontal: 20),
            constraints: BoxConstraints(maxWidth: 1280),
            // create path
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: InkWell(
                  onTap: () => Get.back(),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(width: 6),
                      DescriptionText(text: "Back to Listing"),
                    ],
                  ),
                ),
              ),
              GerenalStepPath(width: width, steps: steps),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 8),
                ),
                child: stepsWidgets(),
              ),
              // Bottom Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currentStep > 0
                      ? TextButton(
                          onPressed: () => setState(() {
                                stepCounter(isBack: true);
                              }),
                          style: TextButton.styleFrom(shadowColor: Colors.orange[200], padding: EdgeInsets.zero),
                          child: Container(
                              margin: EdgeInsets.all(10),
                              width: 150,
                              height: 48,
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4), border: Border.all(color: Colors.orange[400]!, width: 1)),
                              child: Center(child: Text("Previous", style: TextStyle(color: Colors.black)))))
                      : SizedBox(),
                  TextButton(
                      style: TextButton.styleFrom(shadowColor: Colors.orange[200], padding: EdgeInsets.zero),
                      onPressed: () => setState(() {
                            stepCounter();
                          }),
                      child: Container(
                          decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(4)),
                          margin: EdgeInsets.all(10),
                          width: 150,
                          height: 48,
                          child: Center(child: Text("Next", style: TextStyle(color: Colors.white)))))
                ],
              )
            ])),
      ),
    );
  }
}
