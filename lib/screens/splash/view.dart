import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meal_monkey/core/cache_helper.dart';
import 'package:meal_monkey/core/helper_methodes.dart';
import 'package:meal_monkey/screens/%20on_boarding/view.dart';
import 'package:meal_monkey/screens/after_splash/view.dart';
import 'package:meal_monkey/screens/login/view.dart';
import 'package:meal_monkey/screens/profile/view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      // bool isfirstTime=CacheHelper.getIfFirstTime();
      // String token = " ";
      navigateto(
        page:CacheHelper.getIfFirstTime()
          ? OnBoardingScreen()
          : CacheHelper.getToken().isEmpty
        ?LoginScreen()
        :ProfileScreen(),
          withHistory: true,
        
      );
    } );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Background _splash.png.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/app_logo.png.png",
                width: 103.11, height: 105.1),
            const SizedBox(height: 13.9),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Text(
                "Meal",
                style: TextStyle(
                    fontSize: 34,
                    color: Color(0xffFC6011),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 2),
              Text("Monkey",
                  style: TextStyle(
                      fontSize: 34,
                      color: Color(0xff4A4B4D),
                      fontWeight: FontWeight.bold)),
            ]),
            const SizedBox(height: 6),
            Text(
              "Food  Delivery".toUpperCase(),
              style: const TextStyle(
                  color: Color(0xff4A4B4D), letterSpacing: 2.56),
            )
          ],
        ),
      ),
    );
  }
}
