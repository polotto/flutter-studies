import 'package:animation/screens/home/widgets/home_top.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> containerGrow;

  StaggerAnimation({@required this.controller})
      : containerGrow = CurvedAnimation(parent: controller, curve: Curves.ease);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(animation: controller, builder: _buildAnimation),
      ),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        HomeTop(
          containerGrow: containerGrow,
        )
      ],
    );
  }
}
