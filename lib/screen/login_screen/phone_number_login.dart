import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/login_screen/email_address_login.dart';
import 'package:flutterappfacebook/screen/widget/appbar_widget.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';
import 'package:flutterappfacebook/screen/widget/textfield_widget.dart';

class PhoneNumberLogin extends StatefulWidget {
  const PhoneNumberLogin({super.key});

  @override
  State<PhoneNumberLogin> createState() => _PhoneNumberLoginState();
}

class _PhoneNumberLoginState extends State<PhoneNumberLogin> {

  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Find Your Account'),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Enter your phone number', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 30,),
            TextFieldWidget(
                controller: _phoneNumberController,
                labelText: 'Enter phone number',
                keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 60,),
            ButtonWidget(
                text: 'Find Your Account',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => EmailAddressLogin()
                  ));
                }
            )
          ],
        ),
      ),
    );
  }
}
