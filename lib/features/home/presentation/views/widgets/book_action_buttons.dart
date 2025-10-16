import 'package:bookly/features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActionButtons extends StatelessWidget {
  const BookActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              onClick: () {},
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              color: Colors.white,
              text: Text(
                "19.99 €",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onClick: () {},
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              color: const Color(0xffEF8262),
              text: Text(
                "Free preview",
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontFamily: ""),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
