import 'package:flutter/material.dart';
import 'package:projeto_ajudei/styles/styles.dart';
import 'package:projeto_ajudei/widgets/my_text.dart';

class ProgressIndicator<T> extends StatelessWidget {
  final Stream<T> stream;
  final Function builder;

  const ProgressIndicator(
      {Key key, @required this.stream, @required this.builder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T>(
        stream: stream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                valueColor: Styles.progressAnimation,
              ),
            );
          } else if (snapshot.data is List &&
              (snapshot.data as List).length == 0) {
            return Center(
              child: MyText(
                text: 'Nenhum item encontrado!',
                textType: TextType.headline,
              ),
            );
          } else if (snapshot.data == null) {
            return Center(
              child: MyText(
                text: 'Nenhum dado encontrado!',
                textType: TextType.headline,
              ),
            );
          } else {
            return builder(context, snapshot);
          }
        });
  }
}
