import 'package:flutter/material.dart';

//Here we are creating our own Implementation of Floating Action Button.
class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.childIcon, this.onClicked});

  final IconData childIcon;
  final Function onClicked;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        childIcon,
        color: Colors.white,
      ),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
      //Taken From Floating Action button Class Property.
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onClicked,
    );
  }
}
