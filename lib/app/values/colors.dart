import 'package:flutter/cupertino.dart';

class MyColors {
  // Primary Colors
  static Color dark = Color.fromRGBO(31, 29, 43, 1);
  static Color soft = Color.fromRGBO(37, 40, 54, 1);
  static Color soft50 = Color.fromRGBO(37, 40, 54, 0.5);
  static Color soft20 = Color.fromRGBO(37, 40, 54, 0.2);
  static Color blueAccent = Color.fromRGBO(31, 143, 229, 1);
  static Color darkBlueAccent = Color.fromRGBO(15, 120, 202, 1);
  static Color lightBllueAccent = Color.fromRGBO(130, 192, 241, 1);

  // Secondary Colors
  static Color green = Color.fromRGBO(83, 181, 103, 1);
  static Color orange = Color.fromRGBO(255, 135, 0, 1);
  static Color red = Color.fromRGBO(234, 91, 92, 1);

  // Text Colors
  static Color black = Color.fromRGBO(23, 23, 37, 1);
  static Color darkGray = Color.fromRGBO(105, 105, 116, 1);
  static Color grey = Color.fromRGBO(146, 146, 157, 1);
  static Color grey50 = Color.fromRGBO(146, 146, 157, 0.5);
  static Color whiteGrey = Color.fromRGBO(235, 235, 239, 1);
  static Color white = Color.fromRGBO(255, 255, 255, 1);
  static Color lineDark = Color.fromRGBO(234, 234, 234, 1);

  // Icons Color
  static Color blueFacebook = Color.fromRGBO(66, 103, 178, 1);

  // Login Signup
  static List<Color> loginSignListImageButtonColor = [
    white,
    soft,
    blueFacebook
  ];

  // Movie Detail
  static List<Color> shareListImageButtonColor = [
    blueFacebook,
    orange,
    blueAccent,
    dark,
  ];
}
