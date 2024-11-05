import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/login_screen/otp_screen.dart';
import 'package:flutterappfacebook/screen/widget/appbar_widget.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';
import 'package:flutterappfacebook/screen/widget/textfield_widget.dart';

class EmailAddressLogin extends StatefulWidget {
  const EmailAddressLogin({super.key});

  @override
  State<EmailAddressLogin> createState() => _EmailAddressLoginState();
}

class _EmailAddressLoginState extends State<EmailAddressLogin> {
  
  final TextEditingController _emailAddressController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Find Your Account'),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Enter your email address', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 30,),
            TextFieldWidget(
                controller: _emailAddressController,
                labelText: 'Enter email address',
                keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 60,),
            ButtonWidget(
                text: 'Find Your Account',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => OtpScreen()
                  ));
                }
            )
          ],
        ),
      ),
    );
  }
}
