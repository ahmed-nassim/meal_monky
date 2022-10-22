import 'package:flutter/material.dart';
import 'package:meal_monkey/core/cache_helper.dart';
import 'package:meal_monkey/screens/profile/view.dart';

import '../../core/helper_methodes.dart';
import '../desserts/view.dart';
import '../reset_password/view.dart';
import '../sign_up/view.dart';
import 'controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = LoginController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 60,
              ),
              Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff4A4B4D),
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Add your details to login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff7C7D7E),
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 36),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 34, end: 34),
                child: TextFormField(
                  controller: controller.emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide.none),
                      fillColor: Color(0xffF2F2F2),
                      hintText: "Your Email",
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
                  controller: controller.passwordController,
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
              SizedBox(height: 28),
                  isLoading?CircularProgressIndicator():ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    shadowColor: const Color(0xffFC6011),
                    fixedSize: const Size(307, 56),
                    primary: const Color(0xffFC6011),
                  ),
                  onPressed: () {
                    isLoading = true;
                    setState(() {});
                    controller.login().then((value) async{
                      if (value.status) {
                       await CacheHelper.saveToken(value.data.user.rememberToken);
                       await CacheHelper.saveName(value.data.user.userName);
                       await CacheHelper.saveFullName(value.data.user.fullName);
                       await CacheHelper.saveEmail(value.data.user.email);
                       await CacheHelper.savePhone(value.data.user.phone);
                       await  CacheHelper.saveImage(value.data.user.image );




                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen(),
                            ));
                      } else {
                        isLoading = false;
                        setState(() {});
                        print("Login Failed");
                      }
                    });

                    // navigateto(page: OnBoardingScreen());
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                  )),
              SizedBox(height: 24),
              TextButton(
                onPressed: () {
                  navigateto(page: ResetPasswordScreen());
                },
                child: Text("Forgot your password?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7C7D7E),
                    )),
              ),
              SizedBox(height: 49),
              Text("or Login With",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff7C7D7E),
                  )),
              SizedBox(height: 27),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  shadowColor: const Color(0xff367FC0),
                  fixedSize: const Size(307, 56),
                  primary: const Color(0xff367FC0),
                ),
                icon: Icon(Icons.facebook, color: Color(0xffFFFFFF), size: 20),
                label: Text(
                  "Login with Facebook",
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                ),
              ),
              SizedBox(height: 28),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  shadowColor: const Color(0xffDD4B39),
                  fixedSize: const Size(307, 56),
                  primary: const Color(0xffDD4B39),
                ),
                icon: Icon(Icons.g_mobiledata,
                    color: Color(0xffFFFFFF), size: 20),
                label: Text(
                  "Login with Google",
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                ),
              ),
              SizedBox(height: 104),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Don't have an Account? ",
                    style: TextStyle(color: Color(0xff7C7D7E), fontSize: 14),
                  ),
                  TextButton(
                      onPressed: () {
                        navigateto(page: SingUPScreen());
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Color(0xffFC6011),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              SizedBox(height: 10),
            ]),
          )),
    );
  }
}
