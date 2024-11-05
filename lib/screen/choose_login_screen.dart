import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/intro_register_screen.dart';
import 'package:flutterappfacebook/screen/login_screen.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';
import 'package:flutterappfacebook/utils/colors_resource.dart';

class ChooseLoginScreen extends StatelessWidget {
  const ChooseLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          // color: Colors.lightBlueAccent,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: screenSize.height * 0.25,),
              Image.asset(
                  'images/icon_facebook.png',
                width: screenSize.width * 0.16,
                height: screenSize.height * 0.16,
              ),
              SizedBox(height: screenSize.height * 0.05,),
              // Nut Login
              Container(
                // color: Colors.red,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => LoginScreen()
                    ));
                  },
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                          Icons.add_circle, 
                          color: Colors.blueAccent, 
                          size: 22
                      ),
                      SizedBox(width: 10,),
                      Text('Log Into Another Account', style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                ),
              ),
            SizedBox(height: screenSize.height * 0.03,),
            //   Tim kiem tai khoan da dang nhap
              Container(
                // color: Colors.red,
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                          Icons.search,
                          color: Colors.blueAccent,
                          size: 22
                      ),
                      SizedBox(width: 10,),
                      Text('Find Your Account', style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                ),
              ),
            SizedBox(
              height: screenSize.height * 0.30,
            ),
            //   Nut an
              ButtonWidget(
                  text: 'Create New Facebook Account',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IntroRegisterScreen()
                        )
                    );
                  }
              )

            ],
          ),
        ),
      ),
    );
  }
}
