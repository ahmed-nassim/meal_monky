import 'package:flutter/material.dart';
import 'package:meal_monkey/core/helper_methodes.dart';
import 'package:meal_monkey/screens/send_message/view.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Text(
            "Reset Password",
            style: TextStyle(
              color: Color(0xff4A4B4D),
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Please enter your email to receive a\nlink to  create a new password via email",textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff7C7D7E),
              fontSize: 14,
            ),
          ),SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 34, start: 34),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide.none),
                  fillColor: Color(0xffF2F2F2),
                  hintText: "Email",
                  filled: true,
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xffB6B7B7),
                  )),
            ),
          ),SizedBox(
            height: 53,
          ), ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                shadowColor: const Color(0xffFC6011),
                fixedSize: const Size(307, 56),
                primary: const Color(0xffFC6011),
              ),
              onPressed: () {navigateto(page: SendMessageScreen());
              },
              child: Text(
                "Send",
                style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
              )),
        ],
      ),
    );
  }
}
