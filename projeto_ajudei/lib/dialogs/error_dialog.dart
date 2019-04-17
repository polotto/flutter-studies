import 'package:flutter/material.dart';
import 'package:projeto_ajudei/widgets/my_flat_button.dart';

class ErrorDialog {
  final BuildContext context;

  ErrorDialog({
    @required this.context,
    @required String content,
    @required Function onPressed,
  }) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Erro"),
            content: Text(content),
            actions: <Widget>[
              MyFlatButton(text: "Ok", onPressed: onPressed,),
            ],
          );
        });
  }
}