import 'package:flutter/material.dart';
import 'package:meal_monkey/core/helper_methodes.dart';
import 'package:meal_monkey/screens/reset_password/view.dart';
import 'package:meal_monkey/screens/sign_up/view.dart';

import 'core/cache_helper.dart';
import 'screens/ on_boarding/view.dart';
import 'screens/after_splash/view.dart';
import 'screens/bottomsheet/view.dart';
import 'screens/desserts/view.dart';
import 'screens/login/view.dart';
import 'screens/menu/view.dart';
import 'screens/new_password/view.dart';
import 'screens/popular_restaurents/view.dart';
import 'screens/profile/view.dart';
import 'screens/send_message/view.dart';
import 'screens/splash/view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  CacheHelper.clear();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(),
    );
  }
}
