import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/choose_login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void initState() {
    super.initState();
  //   Khoi tao timer de chuyen man hinh sau 3s
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ChooseLoginScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    // Lay kich thuoc man hinh
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
            //   Tao khoang cach tren cung
              SizedBox(height: screenSize.height * 0.32,),

            //   Icon Facebook
              Center(
                child: Image.asset(
                    'images/icon_facebook.png',
                    width: screenSize.width * 0.25,
                    height: screenSize.height * 0.25,
                ),
              ),

              SizedBox(height: screenSize.height * 0.30,),
              Text('From', style: TextStyle(
                color: Colors.grey[300],
                fontSize: screenSize.width * 0.05,
                fontWeight: FontWeight.w400
              ),),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/icon_meta.png',
                    width: screenSize.width * 0.08,
                    height: screenSize.height * 0.08,
                  ),
                  SizedBox(width: 4,),
                  Text('Meta', style: TextStyle(
                    fontSize: screenSize.width * 0.07,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueAccent
                  ),)
                ],
              ),

              // SizedBox(height: screenSize.height * 0.02,)
            ],
          ),
        ),
      ),
    );
  }
}
