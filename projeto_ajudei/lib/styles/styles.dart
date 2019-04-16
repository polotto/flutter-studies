import 'package:flutter/material.dart';
import 'package:projeto_ajudei/styles/my_colors.dart';
import 'package:projeto_ajudei/styles/dimens.dart';

enum TextType {headline, title, body1}

class Styles {
  static final theme = ThemeData(
      primarySwatch: MyColors.primary,
      accentColor: MyColors.accent,
      textTheme: TextTheme(
        headline: TextStyle(
            fontSize: Dimens.textHeadline, color: MyColors.textHeadline),
        title: TextStyle(
            fontSize: Dimens.textTitle, color: MyColors.textTitle),
        body1: TextStyle(
            fontSize: Dimens.textBody1, color: MyColors.textBody1),
        button: TextStyle(
            fontSize: Dimens.textButton, color: MyColors.textButton),
      ));
}
