import 'package:flutter/material.dart';
import 'package:projeto_ajudei/styles/my_colors.dart';
import 'package:projeto_ajudei/styles/dimens.dart';

enum TextType { headline, title, body1 }

class Styles {
  static final theme = ThemeData(
    primarySwatch: MyColors.primary,
    accentColor: MyColors.accent,
    textTheme: TextTheme(
      headline: TextStyle(
          fontSize: Dimens.textHeadline, color: MyColors.textHeadline),
      title: TextStyle(fontSize: Dimens.textTitle, color: MyColors.textTitle),
      body1: TextStyle(fontSize: Dimens.textBody1, color: MyColors.textBody1),
    ),
    buttonColor: MyColors.primary,
  );

  static final textFieldStyle = TextStyle(color: MyColors.textField);
  static final hintTextStyle = TextStyle(color: MyColors.hintField);
  static final textFieldfocusedBorder =
      UnderlineInputBorder(borderSide: BorderSide(color: MyColors.accent));

  static final progressAnimation = AlwaysStoppedAnimation(MyColors.accent);

  static final raisedButtonText = TextStyle(fontSize: Dimens.textButton, color: MyColors.textButton);

  static final flatButtonText = TextStyle(fontSize: Dimens.textButton, color: MyColors.accent);
}
