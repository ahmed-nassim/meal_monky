import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/desserts/components/item_botton_bar.dart';
import 'package:meal_monkey/screens/desserts/components/item_dessert.dart';

import 'components/controller.dart';
import 'components/search_bar.dart';

class DessertsScreen extends StatefulWidget {
  const DessertsScreen({Key? key}) : super(key: key);

  @override
  State<DessertsScreen> createState() => _DessertsScreenState();
}

class _DessertsScreenState extends State<DessertsScreen> {
  final controller = DessertController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottom: const SearchBar(),
        backgroundColor: Colors.white,
        leading:
            const Icon(Icons.arrow_back_ios, size: (25), color: Color(0xff4A4B4D)),
        title: const Text("Desserts",
            style: TextStyle(fontSize: 24, color: Color(0xff4A4B4D))),
        actions: const [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 20),
            child: Icon(
              Icons.shopping_cart_rounded,
              color: Color(0xff4A4B4D),
            ),
          )
        ],
      ),
      body: ListView.builder(padding: const EdgeInsets.only(bottom: 30),
        itemBuilder: (context, index) =>
            ItemDessert(model: controller.products[index]),
        itemCount: controller.products.length,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
             controller.selectedItem=4;
             setState(() {

             });
          },
          child: const Icon(Icons.home),
          backgroundColor:controller.selectedItem==4?const Color(0xffFC6011): const Color(0xffB6B7B7)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomAppBar(
            color: const Color(0xffFFFFFF),
            shape: const CircularNotchedRectangle(),
            notchMargin: 15,
            child: Row(
              children:
                List.generate(
                    controller.titles.length,
                    (index) =>  ItemBottonBar(
                          name: controller.titles[index],
                          icon: controller.icons[index],
                      isSelected: index==controller.selectedItem,
                      onPress: (){
                            print(index);
                            controller.selectedItem = index;
                            setState(() {

                            });
                      },
                    )
                )

            )),
      ),
    );
  }
}
