import 'package:flutter/material.dart';
import 'package:projeto_ajudei/styles/styles.dart';

enum TextType { headline, title, body1 }

class MyText extends StatelessWidget {
  final String text;
  final TextType textType;
  final TextAlign textAlign;

  const MyText({Key key, @required this.text, @required this.textType, this.textAlign = TextAlign.start}) : super(key: key);

  @override
  Text build(BuildContext context) {
    var style;
    switch(textType) {
      case TextType.headline:
        style = Text(text, style: Styles.textHeadline,);
        break;
      case TextType.title:
        style = Text(text, style: Styles.textTitle,);
        break;
      case TextType.body1:
        style = Text(text, style: Styles.textBody1,);
        break;
    }
    return style;
  }
}
