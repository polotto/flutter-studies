import 'package:flutter/material.dart';

class MyColors {
  static final _primaryR = 255;
  static final _primaryG = 156;
  static final _primaryB = 62;
  static final Map<int, Color> _color = {
    50: Color.fromRGBO(_primaryR, _primaryG, _primaryB, .1),
    100: Color.fromRGBO(_primaryR, _primaryG, _primaryB, .2),
    200: Color.fromRGBO(_primaryR, _primaryG, _primaryB, .3),
    300: Color.fromRGBO(_primaryR, _primaryG, _primaryB, .4),
    400: Color.fromRGBO(_primaryR, _primaryG, _primaryB, .5),
    500: Color.fromRGBO(_primaryR, _primaryG, _primaryB, .6),
    600: Color.fromRGBO(_primaryR, _primaryG, _primaryB, .7),
    700: Color.fromRGBO(_primaryR, _primaryG, _primaryB, .8),
    800: Color.fromRGBO(_primaryR, _primaryG, _primaryB, .9),
    900: Color.fromRGBO(_primaryR, _primaryG, _primaryB, 1),
  };

  static final primary = MaterialColor(0xFFe19c3e, _color);
  static final primaryDark = Color(0xab6e06);
  static final accent = Color(0xD81B60);

  static final textHeadline = Color(0x202124);
  static final textTitle = Color(0x202124);
  static final textBody1 = Color(0x5f6368);
  static final textButton = Color(0xffffff);

  static final textField = Color(0x202124);
  static final hintField = Color(0x202124);

  static final textAppBar = Colors.white;
}
