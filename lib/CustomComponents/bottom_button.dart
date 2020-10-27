import 'package:flutter/material.dart';

import '../constants.dart';

//Creating a bottomButton so that this can be used in two different screens
class BottomButton extends StatelessWidget {
  BottomButton(this.onTap, this.buttonTitle);

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 10.0),
        margin: EdgeInsets.only(top: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              buttonTitle,
              style: kLargeButtonTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
