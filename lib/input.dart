import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum GenderType { Male, Female }

int height = 180;

class _InputPageState extends State<InputPage> {
  GenderType currentSelectedGender;

//  Color maleCardColor = inactiveCardColor;
//  Color femaleCardColor = inactiveCardColor;
//
//  We will use Enums and Dart Ternary Operator to Mimic the function.
//  void changeColor(GenderType gender){
//    if(gender == GenderType.Male){
//      if(maleCardColor == inactiveCardColor){
//        maleCardColor = reusableCardColor;
//        femaleCardColor = inactiveCardColor;
//      }else{
//        maleCardColor = inactiveCardColor;
//      }
//    }else if(gender == GenderType.Female){
//      if(femaleCardColor == inactiveCardColor){
//        femaleCardColor = reusableCardColor;
//        maleCardColor = inactiveCardColor;
//      }else
//        femaleCardColor = inactiveCardColor;
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReuseableCard(
                        currentSelectedGender == GenderType.Male
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        childCard: IconContent(FontAwesomeIcons.mars, 'MALE'),
                        onPress: () {
                          print("Male was pressed.");
                          setState(() {
                            currentSelectedGender = GenderType.Male;
                          });
                        },
                      )),
                  Expanded(
                      child: ReuseableCard(
                        currentSelectedGender == GenderType.Female
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        childCard: IconContent(
                            FontAwesomeIcons.venus, 'FEMALE'),
                        onPress: () {
                          print("Female was pressed.");
                          setState(() {
                            currentSelectedGender = GenderType.Female;
                          });
                        },
                      ))
                ],
              ),
            ),
            Expanded(
                child: ReuseableCard(
                  kActiveCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('HEIGHT',
                        style: kLabelTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(height.toString(),
                            style: kHeavyTextStyle,
                          ),
                          Text('cm', style: kLabelTextStyle,),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            overlayColor: Color(0x29EB1555),
                            inactiveTrackColor: Color(0xFF8D8E98),
                            thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 15.0),
                            overlayShape: RoundSliderOverlayShape(
                                overlayRadius: 30.0),
                            thumbColor: Color(0xFFEB1555)
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableCard(kActiveCardColor),
                  ),
                  Expanded(
                    child: ReuseableCard(kActiveCardColor),
                  )
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              width: double.infinity,
              height: kBottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ));
  }
}

//
