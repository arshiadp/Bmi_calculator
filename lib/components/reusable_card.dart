import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//my custom widget it can be extract of a widget
//if we dont use required our property shoud be a optional
class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key,
      required this.colour,
      required this.cardChild,
      required this.onPressed}); //name:{},position:()

  final Color colour;
  final Widget cardChild;
  final dynamic onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: cardChild,
      ),
    );
  }
}
