import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.rateCounter,
  });

  final num rating;
  final num rateCounter;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      spacing: 3,
      children: [
        const Icon(Icons.star_rounded, color: Colors.amberAccent, size: 21),
        Text("$rating", style: Theme.of(context).textTheme.labelMedium),
        Text("($rateCounter)", style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }
}
