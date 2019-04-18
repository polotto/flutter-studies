import 'package:flutter/material.dart';
import 'package:projeto_ajudei/widgets/texts/my_text.dart';

class CardTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final Function onTap;

  const CardTile(
      {Key key,
      @required this.imageUrl,
      @required this.title,
      @required this.subTitle,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Card(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.8,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    MyText(
                      text: title,
                      textType: TextType.headline,
                    ),
                    MyText(
                      text: subTitle,
                      textType: TextType.body1,
                    )
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
