import 'package:flutter/material.dart';
import 'package:flutterappfacebook/data/model/dropdown_model.dart';

class DropdownWidget extends StatelessWidget {
  final String title;
  final String image;
  final List<DropdownModel> items;

  DropdownWidget({
    required this.title,
    required this.image,
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Text(title, style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black87
        ),),
        leading: Image.asset(image, width: 24, height: 24,),
      children: items.map((item) {
        return Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10)
          ),
          child: ListTile(
            leading: Image.asset(item.image, width: 20, height: 20,),
            title: Text(item.text, style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black87
            ),),
            onTap: item.onTap,
          ),
        );
      }).toList(),
    );
  }
}
