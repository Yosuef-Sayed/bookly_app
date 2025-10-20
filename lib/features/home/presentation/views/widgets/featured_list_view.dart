import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatefulWidget {
  const FeaturedListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  State<FeaturedListView> createState() => _FeaturedListViewState();
}

class _FeaturedListViewState extends State<FeaturedListView> {
  late final CarouselSliderController _carouselController;
  int nextPage = 1;
  bool isLoading = false;

  @override
  void initState() {
    _carouselController = CarouselSliderController();
    super.initState();
  }

  void _fetchMore(int index) async {
    final fetchMorePoint = (widget.books.length * 0.7).floor();
    if (index >= fetchMorePoint) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<FeaturedBooksCubit>(
          context,
        ).fetchFeaturedBooks(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: CarouselSlider.builder(
        carouselController: _carouselController,
        itemCount: widget.books.length,
        options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          viewportFraction: 0.4,
          onPageChanged: (index, reason) => _fetchMore(index),
        ),
        itemBuilder: (context, index, realIndex) =>
            CustomBookImageItem(image: widget.books[index].bookImage ?? ""),
      ),
    );
  }
}
