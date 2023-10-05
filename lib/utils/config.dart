import 'package:flutter/material.dart';

class Config {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  //width and height  initialization
  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenHeight = mediaQueryData!.size.height;
    screenWidth = mediaQueryData!.size.width;
  }

  static get widthSize {
    return screenWidth;
  }

  static get heightSize {
    return screenHeight;
  }

  // define spacing height
  static const spaceSmall = SizedBox(
    height: 25,
  );
  static final spaceMedium = SizedBox(
    height: screenHeight! * 0.05,
  );
  static final spaceBig = SizedBox(
    height: screenHeight! * 0.08,
  );

  //text form field  border
  static const outlinedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
    Radius.circular(8),
  ));
  static const focusedBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.greenAccent),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ));
  static const errorBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0)),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ));
  static const primatyColor = Colors.greenAccent;
}
