import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      spacing: 3,
      children: [
        const Icon(Icons.star_rounded, color: Colors.amberAccent, size: 21),
        Text("4.8", style: Theme.of(context).textTheme.labelMedium),
        Text("(2390)", style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }
}
