import 'package:flutter/material.dart';
import 'package:projeto_ajudei/styles/my_colors.dart';
import 'package:projeto_ajudei/styles/dimens.dart';

class Styles {
  static final theme = ThemeData(
    primarySwatch: MyColors.primary,
    accentColor: MyColors.accent,
    buttonColor: MyColors.primary,
  );

  static final textHeadline = TextStyle(fontSize: Dimens.textHeadline, color: MyColors.textHeadline);
  static final textTitle = TextStyle(fontSize: Dimens.textTitle, color: MyColors.textTitle);
  static final textBody1 = TextStyle(fontSize: Dimens.textBody1, color: MyColors.textBody1);

  static final textFieldStyle = TextStyle(color: MyColors.textField);

  static final hintTextStyle = TextStyle(color: MyColors.hintField);

  static final textFieldfocusedBorder =
      UnderlineInputBorder(borderSide: BorderSide(color: MyColors.accent));

  static final progressAnimation = AlwaysStoppedAnimation(MyColors.accent);

  static final raisedButtonText = TextStyle(fontSize: Dimens.textButton, color: MyColors.textButton);

  static final flatButtonText = TextStyle(fontSize: Dimens.textButton, color: MyColors.accent);

  static final appBarTextStyle = TextStyle(fontSize: Dimens.textAppBar, color: MyColors.textAppBar);
}
