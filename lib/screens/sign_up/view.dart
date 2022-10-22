import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/login/view.dart';

import '../../core/helper_methodes.dart';

class SingUPScreen extends StatelessWidget {
  const SingUPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 30,
                color: Color(0xff4A4B4D),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Add your details to sign up",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff7C7D7E),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 34, start: 34),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF2F2F2),
                    hintText: "Name",
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xffB6B7B7),
                    )),
              ),
            ),
            SizedBox(
              height: 28,
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
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 34, start: 34),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF2F2F2),
                    hintText: "Mobile No",
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xffB6B7B7),
                    )),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 34, start: 34),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF2F2F2),
                    hintText: "Address",
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xffB6B7B7),
                    )),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 34, start: 34),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF2F2F2),
                    hintText: "Password",
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xffB6B7B7),
                    )),
              ),
            ),
            SizedBox(
              height: 28,
            ),
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
            SizedBox(
              height: 28,
            ),
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
                  navigateto( page:LoginScreen());
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                )),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Already have an Account?",
                  style: TextStyle(color: Color(0xff7C7D7E), fontSize: 14),
                ),
                TextButton(
                    onPressed: () {navigateto( page: LoginScreen());
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xffFC6011),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            SizedBox(height: 42),
          ],
        )),
      ),
    );
  }
}
