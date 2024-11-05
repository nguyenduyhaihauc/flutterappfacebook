import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/login_screen/phone_number_login.dart';
import 'package:flutterappfacebook/screen/my_home_page.dart';
import 'package:flutterappfacebook/screen/register_screen/intro_register_screen.dart';
import 'package:flutterappfacebook/screen/welcome_screen.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';
import 'package:flutterappfacebook/screen/widget/text_field_pass.dart';
import 'package:flutterappfacebook/screen/widget/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _phoneOrEmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        // color: Colors.red,
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))
              ),
            ),
            SizedBox(height: 20,),
            Image.asset('images/icon_facebook_login.png', width: 80, height: 80,),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFieldWidget(
                      controller: _phoneOrEmailController,
                      labelText: 'Phone or Email'
                  ),
                  SizedBox(height: 15,),
                  TextFieldPass(
                      controller: _passwordController,
                      labelText: 'Password'
                  ),
                  SizedBox(height: 30,),
                  ButtonWidget(
                      text: 'Log in',
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage()
                            )
                        );
                      }
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => PhoneNumberLogin()
                      ));
                    },
                    child: Text('Forgot Password?', style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.blueAccent
                    ),),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                            endIndent: 10,
                          )
                      ),
                      Text('OR', style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey
                      ),),
                      Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                            indent: 10,
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => IntroRegisterScreen()
                        ));
                      },
                      child: Text('Create new Facebook account', style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: Colors.blueAccent,
                          width: 1
                        )
                      ),

                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
