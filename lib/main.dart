import 'package:flutter/material.dart';

import 'screen/my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Clone',

      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

