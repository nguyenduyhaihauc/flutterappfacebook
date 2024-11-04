import 'package:flutter/material.dart';

import '../../utils/colors_resource.dart';


class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  ButtonWidget({
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          gradient: ColorResource.blueButton,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Text(text, style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),),
      ),
    );
  }
}
