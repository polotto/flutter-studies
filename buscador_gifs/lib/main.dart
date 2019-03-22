import 'package:flutter/material.dart';
import 'package:buscador_gifs/ui/home_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(hintColor: Colors.white),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
