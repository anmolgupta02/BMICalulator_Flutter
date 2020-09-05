import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';

const double bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum GenderType { Male, Female }

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
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableCard(
                        currentSelectedGender == GenderType.Male
                            ? activeCardColor
                            : inactiveCardColor,
                        childCard:
                            IconContent(FontAwesomeIcons.mars, 'MALE'),
                    onPress: (){
                      print("Male was pressed.");
                      setState(() {
                        currentSelectedGender = GenderType.Male;
                      });
                    },)

                  ),
                  Expanded(
                      child: ReuseableCard(
                        currentSelectedGender == GenderType.Female
                            ? activeCardColor
                            : inactiveCardColor,
                        childCard: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                        onPress: (){
                          print("Female was pressed.");
                          setState(() {
                            currentSelectedGender = GenderType.Female;
                          });
                        },
                      ))
                ],
              ),
            ),
            Expanded(child: ReuseableCard(activeCardColor)),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableCard(activeCardColor),
                  ),
                  Expanded(
                    child: ReuseableCard(activeCardColor),
                  )
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              width: double.infinity,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ));
  }
}

//
