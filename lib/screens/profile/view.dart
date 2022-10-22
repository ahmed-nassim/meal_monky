import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/core/cache_helper.dart';

import 'controller.dart';
import 'item_button_bar.dart';


class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final controller = ProfileController();
  // File? myImage;
  // File? selectedImage;
  final NameController = TextEditingController(text: CacheHelper.getName());
  final fullNameController = TextEditingController(text: CacheHelper.getFullName());
  final EmailController = TextEditingController(text: CacheHelper.getEmail());
  final phoneController = TextEditingController(text: CacheHelper. getPhone());
  final TokenController = TextEditingController(text: CacheHelper.getToken());
  final IdController = TextEditingController(text: CacheHelper.getId().toString());
  final imageController = TextEditingController(text: CacheHelper.getImage());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        title: Text("Profile",
            style: TextStyle(fontSize: 24, color: Color(0xff4A4B4D))),
        actions: [
          Icon(
            Icons.add_shopping_cart_sharp,
            color: Color(0xff4A4B4D),
          )
        ],
      ),
      body: SizedBox(child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),Stack(children: [
              CircleAvatar(


                // child :Text(CacheHelper.getImage())
      //           backgroundImage: selectedImage == null ? null : FileImage(selectedImage!),
      //   radius: 60, child: InkWell(
      //    onTap: (){
      //      FilePicker.platform.pickFiles(type: FileType.image).then((value)
      //      {
      //        if (value!= null){
      //          selectedImage = File(value.files.first.path!);
      //          setState(() {
      //
      //          });
      //        }
      //
      //      });
      //    },
      //   child: Icon(Icons.camera_alt,color: Colors.white,size: 28, ),
      // ),
              )
            ],)
            // Container(
            //   height: 100, width: 100, clipBehavior: Clip.antiAlias, decoration: BoxDecoration(shape: BoxShape.circle,),
            //     child:Stack(children: [
            //   myImage!= null?
            //   IconButton(onPressed: () async{
            //       FilePicker.platform.pickFiles (type: FileType.image).then (value()) ;
            //
            //     if (result != null) {
            //       File file = File(result.files.single.path);
            //     } else {
            //       // User canceled the picker
            //     }
            //   }, icon: Icon(Icons.add_a_photo),):Image.file(myImage!): SizedBox.shrink(),
            //       Icon(Icons.c)
            // ],)
            //
            //   ),

            // CircleAvatar(
            //   radius: 40,
            //   child: Image.asset("assets/images/app_logo.png.png",),
            // ),
            ,SizedBox(
              height: 10,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.edit, size: 10, color: Color(0xffFC6011)),
                label: Text(
                  "Edit Profile",
                  style: TextStyle(color: Color(0xffFC6011), fontSize: 10),
                )),
            SizedBox(
              height: 11,
            ),
            Text("Hi there Emilia!",
                style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 4,
            ),
            Text("Sign Out",
                style: TextStyle(
                  color: Color(0xff7C7D7E),
                  fontSize: 11,
                )),
            SizedBox(
              height: 47,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 21, end: 21),
              child: TextFormField(controller: TextEditingController(text:CacheHelper.getFullName()),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF2F2F2),
                    hintText: "Name",
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 10,
                      color: Color(0xffB6B7B7),
                    )),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 21, end: 21),
              child: TextFormField(controller: TextEditingController(text:CacheHelper.getEmail()),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF2F2F2),
                    hintText: "Email",
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 10,
                      color: Color(0xffB6B7B7),
                    )),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 21, end: 21),
              child: TextFormField(controller: TextEditingController(text:CacheHelper.getPhone()),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                         borderSide : BorderSide.none),
                    fillColor: Color(0xffF2F2F2),
                    hintText: "Mobile No",
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 10,
                      color: Color(0xffB6B7B7),
                    )),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 21, end: 21),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF2F2F2),
                    hintText: "Address",
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 10,
                      color: Color(0xffB6B7B7),
                    )),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 21, end: 21),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF2F2F2),
                    hintText: "Password",
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 10,
                      color: Color(0xffB6B7B7),
                    )),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 21, end: 21),
              child: TextFormField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF2F2F2),
                    hintText: "Confirm Password",
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 10,
                      color: Color(0xffB6B7B7),
                    )),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  shadowColor: const Color(0xffFC6011),
                  fixedSize: const Size(333, 56),
                  primary: const Color(0xffFC6011),
                ),
                onPressed: () {},
                child: Text(
                  "save",
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                )),
            SizedBox(
              height: 34,
            ),
          ],
        ),
      ), width: double.infinity,),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.selectedItem = 4;
            setState(() {

            });
          },
          child: const Icon(Icons.home),
          backgroundColor: controller.selectedItem == 4 ? const Color(
              0xffFC6011) : const Color(0xffB6B7B7)),
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
                        (index) =>
                        ItemBottonBar(
                          name: controller.titles[index],
                          icon: controller.icons[index],
                          isSelected: index == controller.selectedItem,
                          onPress: () {
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
