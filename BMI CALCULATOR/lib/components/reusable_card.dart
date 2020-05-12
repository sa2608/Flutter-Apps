import 'package:flutter/material.dart';

//reusable code to not repeat the code
//CUSTOM WIDGET
class ReusableCard extends StatelessWidget {
//create a property of type color
  ReusableCard({@required this.Colour, this.cardChild,this.onPress});
  //we use final because once the color is assigned it cannot be changed

  final Color Colour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
