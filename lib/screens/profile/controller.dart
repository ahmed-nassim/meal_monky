import 'package:flutter/material.dart';

class ProfileController {
  int selectedItem = 0;
  List<String> titles = ["menu", "offers", "profile", "more"];
  List<IconData> icons = [
    Icons.menu,
    Icons.shopping_bag,
    Icons.person_rounded,
    Icons.menu_open_outlined
  ];
}