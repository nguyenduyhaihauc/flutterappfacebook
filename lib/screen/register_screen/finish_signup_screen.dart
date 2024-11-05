import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/login_screen/login_screen.dart';
import 'package:flutterappfacebook/screen/my_home_page.dart';
import 'package:flutterappfacebook/screen/widget/appbar_widget.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';

class FinishSignupScreen extends StatelessWidget {
  const FinishSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Terms & Privacy'),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Text('Finishing signing up', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87
            ),),
            SizedBox(height: 15,),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'By tapping Sign up, you agree to our\n',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey
                    ),
                  ),
                  TextSpan(
                    text: 'Terms, Data Policy\t',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueAccent
                    )
                  ),
                  TextSpan(
                      text: 'and\t',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey
                      )
                  ),
                  TextSpan(
                      text: 'Cookies Policy',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueAccent
                      )
                  )
                ]
              ),
              textAlign: TextAlign.center,
            ),
          //   nut an
            SizedBox(height: 140,),
            ButtonWidget(
                text: 'Sign up',
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => LoginScreen()
                  ));
                }
            ),
            SizedBox(height: 15,),
            Text('Sign up without updating my contact', style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.blueAccent
            ),),
            SizedBox(height: 180,),
            Text(
                'The Facebook company is now Meta.'
                'While our company name is changing,'
                'we are continuing to offer the same products, '
                'includingthe Facebook app from Meta. '
                'Our Data Policy and Terms of Service remain in effect, '
                'and this name change does not affect how we use or share data. '
                'Learn more about Meta and our vision for the metaverse.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.black,
                height: 1.8
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
