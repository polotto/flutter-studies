import 'package:flutter/material.dart';
import 'package:projeto_ajudei/screens/HomeScreen.dart';
import 'package:projeto_ajudei/styles/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Ajudei',
      theme: Styles.theme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
