import 'package:flutter/material.dart';
import 'package:projeto_ajudei/styles/dimens.dart';
import 'package:projeto_ajudei/styles/my_colors.dart';
import 'package:projeto_ajudei/styles/styles.dart';

class MyRaisedButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const MyRaisedButton({Key key, @required this.text, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Dimens.raisedButtonHeight,
        child: RaisedButton(
          elevation: Dimens.elevation,
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.raisedButtonText,
          ),
          color: MyColors.primary,
        ));
  }
}
