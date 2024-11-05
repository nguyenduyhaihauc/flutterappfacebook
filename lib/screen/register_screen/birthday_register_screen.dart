import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/register_screen/gender_register_screen.dart';
import 'package:flutterappfacebook/screen/widget/appbar_widget.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';
import 'package:scroll_wheel_date_picker/scroll_wheel_date_picker.dart';

class BirthdayRegisterScreen extends StatefulWidget {
  const BirthdayRegisterScreen({super.key});

  @override
  State<BirthdayRegisterScreen> createState() => _BirthdayRegisterScreenState();
}

class _BirthdayRegisterScreenState extends State<BirthdayRegisterScreen> {

  DateTime currentDate = DateTime.now(); //Ngay thang nam hien tai

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Birthday'),
      body: Container(
        width: double.infinity,
        // color: Colors.red,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: 40,),
            Text("What's your birthday?", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87
            ),),
            SizedBox(height: 15,),
            Text(
              "Choose your date of birth.\nYou can always make this private later.",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey
              ),
              textAlign: TextAlign.center,
            ),
          SizedBox(height: 100,),

            // Chon ngay thang nam
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: ScrollWheelDatePicker(
                  initialDate: currentDate,
                  startDate: DateTime(1900),
                  lastDate: DateTime.now(),
                  loopDays: true, //Cuon ngay theo kieu vong lap
                  loopMonths: true,
                  loopYears: true,
                  onSelectedItemChanged: (DateTime value) {
                    setState(() {
                      currentDate = value;
                    });
                  },
                  theme: CurveDatePickerTheme(
                    wheelPickerHeight: 140,
                    overlay: ScrollWheelDatePickerOverlay.holo,
                    itemTextStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 14
                    ),
                    overlayColor: Colors.black87,
                    overAndUnderCenterOpacity: 0.2
                  )
              ),
            ),
            SizedBox(height: 60,),
          //   Hien thi tuoi
            Text(
                '${calculateAge(currentDate)} Years old',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black87
              ),
            ),
            SizedBox(height: 100,),
            ButtonWidget(
                text: 'Next',
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => GenderRegisterScreen()
                  ));
                }
            )
          ],
        ),
      ),
    );
  }
  // ham tinh tuoi

  int calculateAge(DateTime birthDate) {
    DateTime today = DateTime.now();
    int age = today.year - birthDate.year;
    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }
    return age;
  }
}
