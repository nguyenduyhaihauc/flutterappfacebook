import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/finish_signup_screen.dart';
import 'package:flutterappfacebook/screen/widget/appbar_widget.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';
import 'package:flutterappfacebook/screen/widget/textfield_widget.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Password'),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Choose a password', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87
            ),),
            SizedBox(height: 15,),
            Text(
              'Create a password at least with 6 chaeacters.\nIt should be something others couldn’t guess.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey
              ),
            ),
            SizedBox(height: 50,),
            TextFieldWidget(
                controller: passwordController,
                labelText: 'Password'
            ),
            SizedBox(height: 100,),
            ButtonWidget(
                text: 'Next',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => FinishSignupScreen()
                  ));
                }
            )
          ],
        ),
      ),
    );
  }
}
