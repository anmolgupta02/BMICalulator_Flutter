import 'package:flutter/material.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {

  IconContent(this.iconName, this.iconLabel);

  final IconData iconName;
  final String iconLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          iconLabel,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}