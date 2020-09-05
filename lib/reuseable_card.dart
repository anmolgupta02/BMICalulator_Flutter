import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard(this.custColor, {this.childCard, this.onPress});

  final Color custColor;
  final Widget childCard;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(8.00),
        decoration: BoxDecoration(
          color: custColor,
          borderRadius: BorderRadius.circular(10.00),
        ),
      ),
    );
  }


}