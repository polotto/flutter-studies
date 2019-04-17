import 'package:flutter/material.dart';
import 'package:projeto_ajudei/widgets/my_flat_button.dart';

class InfoDialog {
  final BuildContext context;

  InfoDialog({
    @required this.context,
    @required String content,
    @required Function onPressed,
  }) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Informação"),
            content: Text(content),
            actions: <Widget>[
              MyFlatButton(text: "Ok", onPressed: onPressed,),
            ],
          );
        });
  }
}
