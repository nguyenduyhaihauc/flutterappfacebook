import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  AppbarWidget({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(right: 20, top: 10),
          // color: Colors.red,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios, size: 18,)
              ),
              SizedBox(width: 10,),
              Text(title, style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),)
            ],
          ),
        ),
        Divider(color: Colors.grey[300],)
      ]
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(60);
}