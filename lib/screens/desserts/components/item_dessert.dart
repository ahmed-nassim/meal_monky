import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/desserts/components/model.dart';

class ItemDessert extends StatelessWidget {
  final Product model;
  const ItemDessert({Key? key,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: SizedBox(
        height: 193,
        child: Stack(
          children: [
            Image.asset(model.imageUrl.toString(),
                height: 193, fit: BoxFit.cover, width: double.infinity),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Container(
                padding: const EdgeInsetsDirectional.only(start: 21, bottom: 24,top: 20),decoration: BoxDecoration(boxShadow:
              [
                BoxShadow(color: Colors.black.withOpacity(.4),blurRadius: 10),
              ]
                // color: Colors.black.withOpacity(.3),


              ),
                // color: Colors.black.withOpacity(.3),

                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.name.toString(),
                        style: const TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star, color: Color(0xffFC6011)),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          model.rate.toString(),
                          style: const TextStyle(
                              color: Color(0xffFC6011), fontSize: 11),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          model.description.toString(),
                          style: const TextStyle(
                              color: Color(0xffFFFFFF), fontSize: 12),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          radius: 2,
                          backgroundColor: Color(0xffFC6011),
                        ),
                        Text(
                          model.description.toString(),
                          style: const TextStyle(
                              color: Color(0xffFFFFFF), fontSize: 11),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
