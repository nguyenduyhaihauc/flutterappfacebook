import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/register_screen/password_screen.dart';
import 'package:flutterappfacebook/screen/widget/appbar_widget.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';
import 'package:flutterappfacebook/screen/widget/textfield_widget.dart';

class MobileNumberScreen extends StatefulWidget {
  const MobileNumberScreen({super.key});

  @override
  State<MobileNumberScreen> createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  final TextEditingController mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Mobile number'),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text('Enter your mobile number', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87
              ),),
            SizedBox(height: 15,),
            Text(
              'Enter the mobile number where you can be reached.\nNo one else will see this on your profile',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey
            ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50,),
            TextFieldWidget(
                controller: mobileNumberController,
                labelText: 'Mobile number',
                keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 100,),
            ButtonWidget(
                text: 'Next',
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => PasswordScreen()
                  ));
                }
            )
          ],
        ),
      ),
    );
  }
}
