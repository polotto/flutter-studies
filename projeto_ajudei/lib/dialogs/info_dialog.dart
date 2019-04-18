import 'package:flutter/material.dart';
import 'package:projeto_ajudei/widgets/my_flat_button.dart';
import 'package:projeto_ajudei/widgets/my_text.dart';

class InfoDialog {
  InfoDialog({
    @required context,
    @required String content,
    @required Function onOkPressed,
  }) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: MyText(text: 'Informação', textType: TextType.title,),
            content: MyText(text: content, textType: TextType.body1,),
            actions: <Widget>[
              MyFlatButton(text: 'Ok', onPressed: () {
                // dismiss dialog when OK is pressed
                Navigator.pop(context);
                onOkPressed();
              },),
            ],
          );
        });
  }
}
