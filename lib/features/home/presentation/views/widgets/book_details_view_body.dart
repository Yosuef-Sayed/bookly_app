import 'package:bookly/features/home/presentation/views/widgets/book_action_buttons.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
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
                    const SizedBox(),
                    const BookRating(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
              ),
              const BookActionButtons(),
              const Expanded(child: SizedBox(height: 50)),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 30, bottom: 16),
                child: Text(
                  "You can also like",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 80),
                child: SimilarBooksListView(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
