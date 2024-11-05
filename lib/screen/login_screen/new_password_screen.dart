import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/login_screen/login_screen.dart';
import 'package:flutterappfacebook/screen/widget/appbar_widget.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';
import 'package:flutterappfacebook/screen/widget/textfield_widget.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {

  final TextEditingController _newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Reset your password'),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Create new password', style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 15,),
            Text(
                'You will use this password to access your account.\n'
                'Enter a combination of at least six numbers, letters\n'
                'and punctuation marks.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40,),
            TextFieldWidget(
                controller: _newPasswordController,
                labelText: 'Enter new password'
            ),
            SizedBox(height: 60,),
            ButtonWidget(
                text: 'Log in',
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => LoginScreen()
                  ));
                }
            )
          ],
        ),
      ),
    );
  }
}
