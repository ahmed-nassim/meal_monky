import 'package:flutter/material.dart';

class PopularRestaurentsScreen extends StatelessWidget {
  const PopularRestaurentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Popular Restaurents",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  "View all",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ))
          ]),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 30),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              "assets/images/Minute_by_tuk_tuk.png",
              height: 193,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 7,
            ),
            const SizedBox(width: double.infinity,
              child: Text(
                "Minute by tuk tuk",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(width: double.infinity,
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star, color: Color(0xffFC6011)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "4.9",
                    style: TextStyle(color: Color(0xffFC6011), fontSize: 11),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "(124 ratings) Café",
                    style: TextStyle(color: Color(0xffB6B7B7), fontSize: 12),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Color(0xffFC6011),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Western Food",
                    style: TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
                  )
                ],
              ),
            ),
            const SizedBox(height: 32,),
            Image.asset(
              "assets/images/Café_de_Noir.png",
              height: 193,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 7,
            ),
          const SizedBox(width: double.infinity,
            child: Text(
              "Café de Noir",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Color(0xff4A4B4D),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(width: double.infinity,
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star, color: Color(0xffFC6011)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "4.9",
                    style: TextStyle(color: Color(0xffFC6011), fontSize: 11),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "(124 ratings) Café",
                    style: TextStyle(color: Color(0xffB6B7B7), fontSize: 12),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Color(0xffFC6011),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Western Food",
                    style: TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
                  )
                ],
              ),

          ),
            const SizedBox(height: 32,),
            Image.asset(
              "assets/images/Bake_by_Tella.png",
              height: 193,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 7,
            ),
            const SizedBox(width: double.infinity,
              child: Text(
                "Bakes by Tella",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(width: double.infinity,
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star, color: Color(0xffFC6011)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "4.9",
                    style: TextStyle(color: Color(0xffFC6011), fontSize: 11),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "(124 ratings) Café",
                    style: TextStyle(color: Color(0xffB6B7B7), fontSize: 12),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Color(0xffFC6011),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Western Food",
                    style: TextStyle(color: Color(0xffB6B7B7), fontSize: 11),
                  )
                ],
              ),

            ),







          ],


          ),


        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},

          child: const Icon(Icons.home),
          backgroundColor:const Color(0xffFC6011)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomAppBar(
            color: const Color(0xffFFFFFF),
            shape: const CircularNotchedRectangle(),
            notchMargin: 15,
            child:Padding(
              padding: const EdgeInsetsDirectional.only(start: 10,end: 10),
              child: Row(
                children: const [
                  Icon(Icons.menu),
                  Spacer(),
                  Icon(Icons.shopping_bag),
                  Spacer(),
                  Icon(Icons.person_rounded),
                  Spacer(),
                  Icon(Icons.menu_open),
                ],
              ),
            )),
      ),
    );
  }
}
