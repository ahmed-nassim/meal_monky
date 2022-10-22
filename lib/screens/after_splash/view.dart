import 'package:flutter/material.dart';
import 'package:meal_monkey/core/helper_methodes.dart';
import 'package:meal_monkey/screens/login/view.dart';
import 'package:meal_monkey/screens/sign_up/view.dart';

class AfterSplashScreen extends StatelessWidget {
  const AfterSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 499,
                child:
                    Stack(alignment: AlignmentDirectional.topCenter, children: [
                  Image.asset("assets/images/splash img.png",
                      width: double.infinity, height: 406, fit: BoxFit.fill),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Image.asset("assets/images/app_logo.png.png",
                            width: 103.11, height: 105.1),
                        const SizedBox(height: 13.9),
                        Row(mainAxisSize: MainAxisSize.min, children: const [
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
                      ]),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 44,
              ),
              const Text(
                "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
                style: TextStyle(color: Color(0xff7C7D7E), fontSize: 13),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 36,
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
                onPressed: () {navigateto( page: LoginScreen());
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  shadowColor: const Color(0xffFC6011),
                  fixedSize: const Size(307, 56),
                  primary: const Color(0xffFC6011),
                  side: const BorderSide(color: Color(0xffFC6011), width: 1),
                ),
                onPressed: () {navigateto( page: SingUPScreen());
                },
                child: const Text(
                  "Create An Account",
                  style: TextStyle(color: Color(0xffFC6011), fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 43,
              ),

            ]),
      ),
    ));
  }
}
