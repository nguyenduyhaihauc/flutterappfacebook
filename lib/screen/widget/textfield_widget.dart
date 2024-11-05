import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final TextStyle? labelStyle;
  final TextInputType? keyboardType;

  const TextFieldWidget({
    Key? key,
    required this.controller,
    required this.labelText,
    this.labelStyle,
    this.keyboardType
  }): super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: widget.labelStyle ??
          const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        suffixIcon: widget.controller.text.isNotEmpty
          ? IconButton(
            onPressed: () {
              setState(() {
                widget.controller.clear();
              });
            },
            icon: Icon(Icons.clear, size: 18, color: Colors.grey,)
        ) : null
      ),
      onChanged: (value) {
        setState(() {

        });
      },
    );
  }
}
