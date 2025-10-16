import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: const CustomBookImageItem(),
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
              SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 3,
                children: [
                  Icon(Icons.star_rounded, color: Colors.amberAccent, size: 21),
                  Text("4.8", style: Theme.of(context).textTheme.labelMedium),
                  Text("(2390)", style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
