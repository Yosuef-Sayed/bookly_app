import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bookly/features/home/presentation/view/widgets/featured_list_view_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: CarouselSlider.builder(
        itemCount: 3,
        options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          viewportFraction: 0.4,
        ),
        itemBuilder: (context, index, realIndex) =>
            const FeaturedListViewItem(),
      ),
    );
  }
}
