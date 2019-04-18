import 'package:flutter/material.dart';
import 'package:projeto_ajudei/widgets/my_flat_button.dart';
import 'package:projeto_ajudei/widgets/my_text.dart';

class ComboDialog<T> {
  ComboDialog({
    @required context,
    @required String title,
    @required List<T> content,
    @required Function onOkPressed,
    @required Function itemTitle,
    @required Function isItemSelected,
    @required Function itemSelected,
  }) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: MyText(
              text: title,
              textType: TextType.title,
            ),
            content: _ComboDialog(
              content: content,
              isItemSelected: isItemSelected,
              itemSelected: itemSelected,
              itemTitle: itemTitle,
            ),
            actions: <Widget>[
              MyFlatButton(
                text: 'Ok',
                onPressed: () {
                  // dismiss dialog when OK is pressed
                  Navigator.pop(context);
                  onOkPressed();
                },
              ),
            ],
          );
        });
  }
}

class _ComboDialog<T> extends StatefulWidget {
  final List<T> content;
  final Function itemTitle;
  final Function isItemSelected;
  final Function itemSelected;

  _ComboDialog(
      {@required this.content,
      @required this.itemTitle,
      @required this.isItemSelected,
      @required this.itemSelected});

  @override
  __ComboDialogState createState() =>
      __ComboDialogState(content, itemTitle, isItemSelected, itemSelected);
}

class __ComboDialogState<T> extends State<_ComboDialog> {
  final List<T> content;
  final Function itemTitle;
  final Function isItemSelected;
  final Function itemSelected;

  __ComboDialogState(
      this.content, this.itemTitle, this.isItemSelected, this.itemSelected);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: content.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: CheckboxListTile(
                        title: MyText(
                          text: itemTitle(content[index]),
                          textType: TextType.body1,
                        ),
                        value: isItemSelected(index, content[index]),
                        onChanged: (bool value) {
                          itemSelected(index, content[index]);
                          setState(() {});
                        }),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
