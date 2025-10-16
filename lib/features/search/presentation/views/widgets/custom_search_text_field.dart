import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CusomSearchTextField extends StatelessWidget {
  const CusomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    var customBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
    return TextField(
      decoration: InputDecoration(
        enabledBorder: customBorder,
        focusedBorder: customBorder,
        suffixIcon: const Opacity(
          opacity: 0.75,
          child: Icon(CupertinoIcons.search, size: 30),
        ),
        hint: const Text("Search with book name"),
      ),
    );
  }
}
