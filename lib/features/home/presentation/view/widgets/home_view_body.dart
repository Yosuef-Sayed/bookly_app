import 'package:bookly/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/featured_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [CustomAppBar(), FeaturedListView()]);
  }
}

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ScrollSnapList(
        itemCount: 10,
        onItemFocus: (i) {},
        dynamicItemSize: true,
        itemSize: MediaQuery.of(context).size.width / 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: const FeaturedListViewItem(),
        ),
      ),
    );
  }
}
