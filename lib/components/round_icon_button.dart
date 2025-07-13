import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPressed(),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 48.0, height: 48.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ), //CircleBorder(),
      fillColor: const Color(0xFF2b2b2b),
      child: Icon(icon, color: kInactiveCardColour),
    );
  }
}
