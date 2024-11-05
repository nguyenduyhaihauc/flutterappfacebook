import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/fullname_register_screen.dart';
import 'package:flutterappfacebook/screen/widget/appbar_widget.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';

class IntroRegisterScreen extends StatelessWidget {
  const IntroRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppbarWidget(title: 'Create account'),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: screenSize.height * 0.06,),
            Image.asset(
                'images/intro_register.png',
              width: double.infinity,
              height: screenSize.height * 0.20,
            ),
            SizedBox(height: screenSize.height * 0.10,),
            Text('Join Facebook', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(height: screenSize.height * 0.02,),
            Text(
              'We’ll help you \n create a new account in a few easy steps.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: screenSize.height * 0.07,),
            ButtonWidget(
                text: 'Next',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullNameRegisterScreen()
                      )
                  );
                }
            ),
            SizedBox(height: screenSize.height * 0.24,),
            Text(
              'Already have an account?',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueAccent
              ),
            ),
          ],
        ),
      ),
    );
  }
}
