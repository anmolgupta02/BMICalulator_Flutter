import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

import 'file:///E:/Flutter%20Training/Training%20Projects/BMI%20Calculator/bmi_calculator/lib/CustomComponents/reuseable_card.dart';

import '../CustomComponents/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.BMIVal, this.BMIResult, this.BMIResultDesc});

  final String BMIResult;
  final String BMIVal;
  final String BMIResultDesc;

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
                childCard: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        BMIResult.toUpperCase(),
                        style: kResultWeightTextStyle,
                      ),
                      Text(
                        BMIVal,
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
            ),
            BottomButton(() {
              Navigator.pop(context);
            }, "RE-Calculate")
          ],
        ));
  }
}
