import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/login_screen/new_password_screen.dart';
import 'package:flutterappfacebook/screen/widget/appbar_widget.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';
import 'package:flutterappfacebook/utils/colors_resource.dart';

// Ham xac thuc otp
Future<String?> validateOtp(String otp) async {
  await Future.delayed(Duration(milliseconds: 2000));
  if (otp == "1234") {
    return null;
  } else {
    return "The enter OTP is wrong";
  }
}

// Ham chuyen tiep khi OPT dung
void moveToNextScreen(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
      builder: (context) => NewPasswordScreen()
  ));
}

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  final TextEditingController _otpController = TextEditingController();
  bool _isLoading = false;
  String? _errorMessage;

  // Ham xu ly khi nhan nut xac thuc
  void _submitOtp() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    String otp = _otpController.text;
    String? validateMessage = await validateOtp(otp);

    setState(() {
      _isLoading = false;
      _errorMessage = validateMessage;
    });

    if (validateMessage == null) {
      moveToNextScreen(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Find Your Account'),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          children: [
            Text(
                'Enter the code we sent to\nSanjayshendy123@gmail.com',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10,),
            Text('We sent 6 digit code to your email address.', style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.grey
            ),),
            SizedBox(height: 30,),
            TextField(
              controller: _otpController,
              maxLength: 4,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter OTP',
                errorText: _errorMessage,
                border: OutlineInputBorder(),
                counterText: ''
              ),
            ),
            SizedBox(height: 40,),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: ColorResource.blueButton,
                borderRadius: BorderRadius.circular(15)
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
                ),
                onPressed: _isLoading ? null : _submitOtp,
                child: _isLoading
                    ? CircularProgressIndicator(color: Colors.white)
                    : Text('Continue', style: TextStyle(color: Colors.white),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
