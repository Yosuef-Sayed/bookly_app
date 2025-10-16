import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined, size: 30),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search, size: 30),
          ),
        ],
      ),
    );
  }
}
