import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/%20on_boarding/view.dart';
import 'package:meal_monkey/screens/login/view.dart';

import '../../core/helper_methodes.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(


          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "New Password",
              style: TextStyle(
                fontSize: 30,
                color: Color(0xff4A4B4D),
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Please enter your email to receive a\nlink to  create a new password via email",
              style: TextStyle(
                color: Color(0xff7C7D7E),
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 39),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 34, start: 34),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF2F2F2),
                    hintText: "New Password",
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xffB6B7B7),
                    )),
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 34, start: 34),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF2F2F2),
                    hintText: "Confirm Password",
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xffB6B7B7),
                    )),
              ),
            ),
            SizedBox(height: 28),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  shadowColor: const Color(0xffFC6011),
                  fixedSize: const Size(307, 56),
                  primary: const Color(0xffFC6011),
                ),
                onPressed: () {navigateto(page: LoginScreen());
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                )),



          ],
        ),
      ),
    );
  }
}
