import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/new_password/view.dart';
import 'package:meal_monkey/screens/reset_password/view.dart';

import '../../core/helper_methodes.dart';

class SendMessageScreen extends StatelessWidget {
  const SendMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 65,
            ),
            Text(
              "We have sent an OTP to\nyour Mobile",
              style: TextStyle(
                fontSize: 25,
                color: Color(0xff4A4B4D),
              ),
            ),

            SizedBox(height: 10),
            Text(
              "Please check your mobile number 071*****12\ncontinue to reset your password",
              style: TextStyle(
                color: Color(0xff7C7D7E),
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 54),
            Row(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(width: 34,),
                Container(
                  width: 56,
                  height: 56,
                  child: TextFormField(textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Color(0xffF2F2F2),
                        hintText: "*",
                        filled: true,
                        hintStyle: TextStyle(
                          fontSize: 37,
                          color: Color(0xffB6B7B7),
                        )),
                  ),
                ),
                SizedBox(width: 28,),
                Container(
                  width: 56,
                  height: 56,
                  child: TextFormField(textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Color(0xffF2F2F2),
                        hintText: "*",
                        filled: true,
                        hintStyle: TextStyle(
                          fontSize: 37,
                          color: Color(0xffB6B7B7),
                        )),
                  ),
                ),
                SizedBox(width: 27,),
                Container(
                  width: 56,
                  height: 56,
                  child: TextFormField(textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Color(0xffF2F2F2),
                        hintText: "*",
                        filled: true,
                        hintStyle: TextStyle(
                          fontSize: 37,
                          color: Color(0xffB6B7B7),
                        )),
                  ),
                ),
                SizedBox(width: 27,),
                Container(
                  width: 56,
                  height: 56,
                  child: TextFormField(textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Color(0xffF2F2F2),
                        hintText: "*",
                        filled: true,
                        hintStyle: TextStyle(
                          fontSize: 37,
                          color: Color(0xffB6B7B7),
                        )),
                  ),
                ),
                SizedBox(width: 34,),
              ],
            ),
            SizedBox(height: 36),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  shadowColor: const Color(0xffFC6011),
                  fixedSize: const Size(307, 56),
                  primary: const Color(0xffFC6011),
                ),
                onPressed: () {
                  navigateto(page: NewPasswordScreen());
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                )),
            SizedBox(height: 32),
            Row(mainAxisSize: MainAxisSize.min,
              children: [ Text(
                "Didn't Receive?",
                style: TextStyle(color: Color(0xff7C7D7E), fontSize: 14),
              ),
                TextButton(
                    onPressed: () {navigateto(page: ResetPasswordScreen());
                    },
                    child: Text(
                      "Click Here",
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ))

              ],
            )

          ],
        ),
      ),
    );
  }
}
