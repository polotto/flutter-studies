import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> _buttonSqueeze;
  final Animation<double> _buttonZoomOut;

  StaggerAnimation({this.controller})
      : _buttonSqueeze = Tween(begin: 320.0, end: 60.0).animate(
            CurvedAnimation(parent: controller, curve: Interval(0.0, 0.150))),
        _buttonZoomOut = Tween(begin: 60.0, end: 1000.0).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(0.5, 1.0, curve: Curves.bounceOut)));

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: InkWell(
        onTap: () {
          controller.forward();
        },
        child: Hero(
            tag: "fade",
            child:  _buttonZoomOut.value <= 70
                ? Container(
                width: _buttonSqueeze.value,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(247, 64, 106, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: _buildInside(context))
                : Container(
              width: _buttonZoomOut.value,
              height: _buttonZoomOut.value,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 64, 106, 1.0),
                  shape: _buttonZoomOut.value < 500
                      ? BoxShape.circle
                      : BoxShape.rectangle),
            )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }

  Widget _buildInside(BuildContext context) {
    if (_buttonSqueeze.value > 75) {
      return Text(
        "Sign in",
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.3),
      );
    } else {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 1.0,
      );
    }
  }
}
