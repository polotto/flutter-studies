import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations Intro',
      debugShowCheckedModeBanner: false,
      home: LogoApp(),
    );
  }
}

class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

// SingleTickerProviderStateMixin informa toda fez q a tela for redenrizada
class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(
            vsync: this,
            duration: Duration(seconds: 2)
        );

    // altera a curva da animação
    //Curves.easeInOut
    //Curves.bounceIn
    //Curves.elasticOut
    //Curves.fastOutSlowIn
    animation = CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);
    // status da animação atual
    animation.addStatusListener((status) {
      // completou
      if (status == AnimationStatus.completed) {
        controller.reverse();
      }
      // a animação chegou em zero
      else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    //debug
//    animation.addListener((){
//      print(animation.value);
//    });
    // anima no sentido direto (para frente)
    controller.forward();
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AngeloTransition(
        child: LogoWidget(),
        animation: animation,
      ),
    );
  }
}

// cria um widget para a animação
//class AnimatedLogo extends AnimatedWidget {
//  AnimatedLogo(Animation<double> animation) : super(listenable: animation);
//
//  @override
//  Widget build(BuildContext context) {
//    // faz o cast da listenable para double
//    final Animation<double> animation = listenable;
//    return Center(
//      child: Container(
//        height: animation.value,
//        width: animation.value,
//        child: FlutterLogo(),
//      ),
//    );
//  }
//}

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(),
    );
  }
}

class AngeloTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;
  final sizeTween = Tween<double>(begin: 0, end: 300);
  final opacityTween = Tween<double>(begin: 0.1, end: 1);

  AngeloTransition({this.child, this.animation});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Opacity(
            opacity: opacityTween.evaluate(animation).clamp(0.0, 1.0),
            child: Container(
              height: sizeTween.evaluate(animation),
              width: sizeTween.evaluate(animation),
              child: child,
            ),
          );
        },
        child: child,
      ),
    );
  }
}
