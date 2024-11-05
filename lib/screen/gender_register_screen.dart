import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/mobile_number_screen.dart';
import 'package:flutterappfacebook/screen/widget/appbar_widget.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';

class GenderRegisterScreen extends StatefulWidget {
  const GenderRegisterScreen({super.key});

  @override
  State<GenderRegisterScreen> createState() => _GenderRegisterScreenState();
}

class _GenderRegisterScreenState extends State<GenderRegisterScreen> {
  String _selectedGender = 'Female'; //Gia tri mac dinh la Nam

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Gender'),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("What's your gender?", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87
            ),),
            SizedBox(height: 15,),
            Text("You can change who sees your gennder\n on your profile later.", style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey
            ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40,),
          //   RadioButton Nam
            RadioListTile<String>(
              title: Text('Female', style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),),
                value: "Female",
                groupValue: _selectedGender,
                onChanged: (String? value) {
                  setState(() {
                    _selectedGender = value!;
                  });
                },
              activeColor: Colors.blueAccent,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
            ),
          Divider(color: Colors.grey[300],),
          //   RadioButton cho nu
            RadioListTile<String>(
              title: Text('Male', style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),),
                value: 'Male',
                groupValue: _selectedGender,
                onChanged: (String? value) {
                  setState(() {
                    _selectedGender = value!;
                  });
                },
              activeColor: Colors.blueAccent, //Mau khi chon
              controlAffinity: ListTileControlAffinity.trailing, //Dat nut o ben phai
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
            ),
            Divider(color: Colors.grey[300],),
          //   Radio cho custom
            RadioListTile<String>(
              title: Text('Custom', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
              ),),
              subtitle: Text(
                'Select custome to choose another gender,\nor if you’d rather not say',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey
                ),
              ),
              value: 'Custom',
              groupValue: _selectedGender,
              onChanged: (String? value) {
                setState(() {
                  _selectedGender = value!;
                });
              },
              activeColor: Colors.blueAccent, //Mau khi chon
              controlAffinity: ListTileControlAffinity.trailing, //Dat nut o ben phai
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
            ),
          SizedBox(height: 100,),
          //   Nut an
            ButtonWidget(
                text: 'Next',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => MobileNumberScreen()
                  ));
                }
            )
          ],
        ),
      ),
    );
  }
}
