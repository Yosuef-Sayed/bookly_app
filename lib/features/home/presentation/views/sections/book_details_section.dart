import 'package:bookly/features/home/presentation/views/widgets/book_action_buttons.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: const CustomBookImageItem(image: ""),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 46),
          child: Column(
            spacing: 6,
            children: [
              Text(
                "The Jungle Book",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Rudyard Kipling",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(),
              const BookRating(mainAxisAlignment: MainAxisAlignment.center),
            ],
          ),
        ),
        const BookActionButtons(),
      ],
    );
  }
}
