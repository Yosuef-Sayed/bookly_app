import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsView),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.135,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetsData.testImage),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        "Harry Potter and the Goblet of Fire",
                        style: Theme.of(context).textTheme.bodyLarge,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    Text(
                      "J.K. Rowling",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "19.99 €",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Row(
                            spacing: 3,
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.amberAccent,
                                size: 21,
                              ),
                              Text(
                                "4.8",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                "(2390)",
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
