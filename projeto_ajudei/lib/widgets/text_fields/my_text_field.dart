import 'package:flutter/material.dart';
import 'package:projeto_ajudei/styles/styles.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final TextInputType keyboardType;
  final Stream<String> stream;
  final Function(String) onChanged;
  final bool obscure;

  const MyTextField({Key key, this.controller,
    this.hint = "", this.keyboardType = TextInputType.text,
    this.stream, this.onChanged, this.obscure = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        stream: stream,
        builder: (context, snapshot) {
          return TextField(
            style: Styles.textFieldStyle,
            obscureText: obscure,
            onChanged: onChanged,
            keyboardType: keyboardType,
            decoration: InputDecoration(
                errorText: snapshot.hasError ? snapshot.error : null,
                hintText: hint,
                hintStyle: Styles.hintTextStyle,
                focusedBorder: Styles.textFieldfocusedBorder
            ),
          );
        }
    );
  }
}
