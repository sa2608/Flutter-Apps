import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);
const KTextFieldInputDecoration = InputDecoration(
  filled: true, //fills the textfield with color
  fillColor: Colors.white, //fills the textfield with white color
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  // inside the text field it shows the hint
  hintText: 'Enter City name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  //makes the textfield round
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    //removes the border from the bottom of the textfield
    borderSide: BorderSide.none,
  ),
);
