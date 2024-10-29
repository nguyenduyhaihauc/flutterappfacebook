import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Title and Icon search
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            height: 50,
            // color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Menus',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 21
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCDCDC)
                  ),
                  child: Icon(Icons.search),
                )
              ],
            ),
          ),

          //   Two Button
        ],
      ),
    );
  }
}