import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../desserts/components/search_bar.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        bottom: const SearchBar(),
        title: Padding(
          padding: const EdgeInsetsDirectional.only(start: 21),
          child: Text("Menu", style: TextStyle(color: Color(0xff4A4B4D))),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 21),
            child: Icon(
              Icons.add_shopping_cart_sharp,
              color: Color(0xff4A4B4D),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
     body:Column(children: [
       Stack(
         children: [
           Container(width: 97,height:485,decoration: BoxDecoration(color: Color(0xffFC6011),
               borderRadius: BorderRadius.circular(10)), ),
           Padding(
             padding: const EdgeInsetsDirectional.only(start:59,top: 50),
             child: Container(height: 87,width: 280, decoration: BoxDecoration(color: Color(0xffFFFFFF),borderRadius: BorderRadiusDirectional.circular(40))     ),
           )
         ],
       )
     ])
    


      
    );
  }
}
