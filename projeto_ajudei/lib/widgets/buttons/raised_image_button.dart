import 'package:flutter/material.dart';
import 'package:projeto_ajudei/styles/dimens.dart';
import 'package:projeto_ajudei/styles/my_colors.dart';
import 'package:projeto_ajudei/styles/styles.dart';

class RaisedImageButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final IconData iconData;

  const RaisedImageButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      @required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Dimens.raisedButtonHeight,
        child: RaisedButton(
          elevation: Dimens.elevation,
          onPressed: onPressed,
          child: Row(
            children: <Widget>[
              Icon(iconData),
              Expanded(
                  child: Text(
                text,
                style: Styles.raisedButtonText,
              ))
            ],
          ),
          color: MyColors.primary,
        ));
  }
}
