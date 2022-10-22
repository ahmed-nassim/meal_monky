import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/desserts/components/model.dart';

class DessertController {
  int selectedItem = 0;
  List<String> titles = ["menu", "offers", "profile", "more"];
  List<IconData> icons = [
    Icons.menu,
    Icons.shopping_bag,
    Icons.person_rounded,
    Icons.menu_open_outlined
  ];

  List<Product> products = [
    Product(
        name: "French Apple Pie",
        description: "Minute by tuk tuk ",
        catogory: "Dessert",
        imageUrl: "assets/images/French Apple.png",
        rate: 4.9),
    Product(
        name: "Dark Chocolate Cake",
        description: "Cakes by Tella",
        catogory: "Dessert",
        imageUrl: "assets/images/Dark Chocolate.png",
        rate: 4.9),
    Product(
        name: "Street Shake",
        description: "Café Racer  ",
        catogory: "Dessert",
        imageUrl: "assets/images/Street Shake.png",
        rate: 4.9),
    Product(
        name: "Fudgy Chewy Brownies",
        description: "Minute by tuk tuk ",
        catogory: "Dessert",
        imageUrl: "assets/images/Fudgy Chewy.png",
        rate: 4.9),
  ];
}
