import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final textStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "title",
        style: textStyle,
      ),
      subtitle: Text(
        "subtitle",
        style: textStyle,
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            "Pedidos: 0",
            style: textStyle,
          ),
          Text(
            "Gasto: 0",
            style: textStyle,
          )
        ],
      ),
    );
  }
}
