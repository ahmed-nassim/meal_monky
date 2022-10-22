import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({Key? key}) : super(key: key);

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios),
          title: Text(" Chekout", style: TextStyle(fontSize: 20)),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  shadowColor: const Color(0xffFC6011),
                  fixedSize: const Size(307, 56),
                  primary: const Color(0xffFC6011),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    builder: (context) => ListView(children: [
                      Column(
                        children: [
                          Align(  alignment: Alignment.topRight,
                           child: CloseButton(
                            color: Color(0xff4A4B4D),
                          ),
                        ),

                          SizedBox(
                            height: 16,
                          ),

                            Image.asset(
                              "assets/images/bottom_Sheet.png",
                              width: 223.5,
                              height: 254.28,
                              alignment: Alignment.center,
                            ),
                          // ),

                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Thank You!",
                            style: TextStyle(
                                fontSize: 26,
                                color: Color(0xff4A4B4D),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "for your order",
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff4A4B4D),
                            ),
                          ),
                          SizedBox(
                            height: 19,
                          ),
                          Text(
                            "Your Order is now being processed. We will let you\n know once the order is picked from the outlet. Check the status of your Order",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff4A4B4D),
                            ),
                          ),
                          SizedBox(
                            height: 34,
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
                              onPressed: () {},
                              child: Text(
                                "Track My Order",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF), fontSize: 16),
                              )),
                          SizedBox(
                            height: 17,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Back To Home",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff4A4B4D)),
                              )),
                          SizedBox(
                            height: 17,
                          ),
                        ],
                      ),
                    ],)

                    ,context: context,
                  );
                },
                child: Text(
                  "Send Order",
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                ),
              ),
            ],
          ),
        ));
  }
}
