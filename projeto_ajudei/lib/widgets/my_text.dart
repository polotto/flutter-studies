import 'package:flutter/material.dart';
import 'package:projeto_ajudei/styles/styles.dart';

class MyText extends StatelessWidget {
  final String text;
  final TextType textType;

  MyText({Key key, @required this.text, @required this.textType}) : super(key: key);

  @override
  Text build(BuildContext context) {
    var style;
    switch(textType) {
      case TextType.headline:
        style = Text(text, style: Theme.of(context).textTheme.headline,);
        break;
      case TextType.title:
        style = Text(text, style: Theme.of(context).textTheme.title,);
        break;
      case TextType.body1:
        style = Text(text, style: Theme.of(context).textTheme.body1,);
        break;
    }
    return style;
  }
}
