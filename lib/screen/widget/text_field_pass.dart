import 'package:flutter/material.dart';

class TextFieldPass extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final TextInputType? keyboardType;
  final TextStyle? labelStyle;

  TextFieldPass({
    required this.controller,
    required this.labelText,
    this.keyboardType,
    this.labelStyle
  });

  @override
  State<TextFieldPass> createState() => _TextFieldPassState();
}

class _TextFieldPassState extends State<TextFieldPass> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _isObscure,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: widget.labelStyle ??
          TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey
          ),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
            icon: Icon(
              _isObscure ? Icons.visibility_off : Icons.visibility,
              size: 18,
              color: Colors.grey,
            )
        )
      ),
      onChanged: (value) {
        setState(() {

        });
      },
    );
  }
}
