import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/birthday_register_screen.dart';
import 'package:flutterappfacebook/screen/widget/appbar_widget.dart';
import 'package:flutterappfacebook/screen/widget/button_widget.dart';

class FullNameRegisterScreen extends StatefulWidget {
  const FullNameRegisterScreen({super.key});

  @override
  State<FullNameRegisterScreen> createState() => _FullNameRegisterScreenState();
}

class _FullNameRegisterScreenState extends State<FullNameRegisterScreen> {

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Create account'),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: 30,),
            Text(
              'What’s your name?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              )
            ),
            SizedBox(height: 10,),
            Text(
                'Enter the name you use in real life.',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  color: Colors.grey
                )
            ),
            SizedBox(height: 50,),
            // Text Field
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: TextFormField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                        labelText: 'First Name',
                          labelStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                          ),
                        suffixIcon: firstNameController.text.isNotEmpty
                          ? IconButton(
                            onPressed: () {
                              setState(() {
                                firstNameController.clear();
                              });
                            },
                            icon: Icon(Icons.clear, size: 18, color: Colors.grey,)
                        ) : null
                      ),
                      onChanged: (value) {
                        setState(() {

                        });
                      },
                    )
                ),
                SizedBox(width: 16,),
              //   TextField LastName
                Expanded(
                    child: TextFormField(
                      controller: lastNameController,
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        labelStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                        suffixIcon: lastNameController.text.isNotEmpty
                          ? IconButton(
                            onPressed: () {
                              setState(() {
                                lastNameController.clear();
                              });
                            }, 
                            icon: Icon(Icons.clear, size: 18, color: Colors.grey,)
                        ) : null
                      ),
                      onChanged: (value) {
                        setState(() {

                        });
                      },
                    )
                )
              ],
            ),
            SizedBox(height: 100,),
            // Nu an
            ButtonWidget(
                text: 'Next',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => BirthdayRegisterScreen()
                  ));
                }
            )
          ],
        ),
      ),
    );
  }
}
