import 'package:flutter/material.dart';
import 'package:projeto_ajudei/styles/styles.dart';

class MyFlatButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const MyFlatButton({Key key, @required this.text, this.onPressed}) : super(key: key);

  @override
  FlatButton build(BuildContext context) {
    return FlatButton(
      child: Text(
          text,
        style: Styles.flatButtonText,
      ),
      onPressed: onPressed,
    );
  }
}
