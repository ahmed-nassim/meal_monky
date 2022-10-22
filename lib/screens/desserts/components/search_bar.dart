import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(21),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                borderSide: BorderSide.none),
            fillColor: const Color(0xffF2F2F2),
            filled: true,
            hintText: "Search Food",
            prefixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(start:20),
              child: Icon(
                Icons.search_rounded,
                color: Colors.grey.withOpacity(.9),
              ),
            ),
            contentPadding: const EdgeInsetsDirectional.only(start: 20),
            helperStyle: const TextStyle(fontSize: 14, color: Color(0xffB6B7B7))),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(88);
}
