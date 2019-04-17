import 'package:flutter/material.dart';
import 'package:projeto_ajudei/styles/styles.dart';

class ProgressIndicatorDialog {
  final BuildContext context;

  ProgressIndicatorDialog({
    @required this.context,
    @required String content,
    @required Function onPressed,
  }) {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(
              valueColor: Styles.progressAnimation,
            ),
          );
        });
  }
}
