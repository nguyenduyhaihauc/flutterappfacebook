import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/birthday_register_screen.dart';
import 'package:flutterappfacebook/screen/choose_login_screen.dart';
import 'package:flutterappfacebook/screen/finish_signup_screen.dart';
import 'package:flutterappfacebook/screen/fullname_register_screen.dart';
import 'package:flutterappfacebook/screen/gender_register_screen.dart';
import 'package:flutterappfacebook/screen/intro_register_screen.dart';
import 'package:flutterappfacebook/screen/login_screen.dart';
import 'package:flutterappfacebook/screen/mobile_number_screen.dart';
import 'package:flutterappfacebook/screen/password_screen.dart';
import 'package:flutterappfacebook/screen/welcome_screen.dart';

import 'screen/my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Clone',

      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

