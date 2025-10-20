import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: BookListViewItem(
          image: "",
          title: "No Title",
          author: "Unknown",
          price: 0.0,
          rating: 4.8,
          rateCounter: 2390,
        ),
      ),
    );
  }
}
