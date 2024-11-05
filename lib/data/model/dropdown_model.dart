import 'package:flutter/cupertino.dart';

class DropdownModel {
  final String image;
  final String text;
  final VoidCallback onTap;

  DropdownModel({
    required this.image,
    required this.text,
    required this.onTap
  });
}