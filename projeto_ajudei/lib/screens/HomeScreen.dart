import 'package:flutter/material.dart';
import 'package:projeto_ajudei/styles/dimens.dart';
import 'package:projeto_ajudei/styles/my_colors.dart';
import 'package:projeto_ajudei/styles/styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        elevation: Dimens.elevation,
        title: Text('Home', style: Styles.appBarTextStyle),
      ),
      body: Container(),
    );
  }
}
