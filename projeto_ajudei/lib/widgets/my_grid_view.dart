import 'package:flutter/material.dart';
import 'package:projeto_ajudei/dialogs/my_progress_indicator.dart';
import 'package:projeto_ajudei/styles/dimens.dart';

class MyGridView<T> extends StatelessWidget {
  final Stream<List<T>> stream;
  final Function itemTile;

  const MyGridView({Key key, @required this.stream, @required this.itemTile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyProgressIndicator<List<T>>(
      stream: stream,
      builder: (BuildContext context, List<T> snapshot) {
        return GridView.builder(
            padding: EdgeInsets.all(Dimens.marginScreen),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: Dimens.marginCard,
                crossAxisSpacing: Dimens.marginCard,
                childAspectRatio: 0.65),
            itemCount: snapshot.length,
            itemBuilder: (BuildContext context, int index) {
              return itemTile(context, index);
            });
      },
    );
  }
}
