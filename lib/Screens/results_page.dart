import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

import 'file:///E:/Flutter%20Training/Training%20Projects/BMI%20Calculator/bmi_calculator/lib/CustomComponents/reuseable_card.dart';

import '../CustomComponents/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  String BMIResult = "Normal";
  double BMIVal = 22.2;
  String BMIResultDesc = "Your BMI is low BITCH";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCUlATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result', style: kHeavyTextStyle),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                kActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      BMIResult,
                      style: kResultWeightTextStyle,
                    ),
                    Text(
                      BMIVal.toString(),
                      style: kBMITextStyle,
                    ),
                    Text(
                      BMIResultDesc,
                      style: kBMIResult,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(() {
              Navigator.pop(context);
            }, "RE-Calculate")
          ],
        ));
  }
}
