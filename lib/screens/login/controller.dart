import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:meal_monkey/core/cache_helper.dart';

import 'model.dart';

class LoginController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // final nameController=TextEditingController(text: CacheHelper.getName());
  // final fullNameController=TextEditingController(text: CacheHelper.getFullName());
  // final phoneController=TextEditingController(text: CacheHelper.getPhone());
  // final idController=TextEditingController(text: CacheHelper.getId().toString());

  Future<UserData> login() async {
    final resp = await Dio()
        .post("https://transfer-me.wanderguide.net/api/users/login", data: {
      "email": emailController.text,
      "password": passwordController.text,
      "type": "student"
    });
    print(resp.data.toString());
    final model = UserData.fromJson(resp.data);
    return model;
  }
}
