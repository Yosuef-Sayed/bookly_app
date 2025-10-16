import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final BorderRadius? borderRadius;
  final Color color;
  final Text text;
  final void Function() onClick;
  const CustomButton({
    super.key,
    this.borderRadius,
    required this.color,
    required this.text,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onClick,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
          backgroundColor: color,
        ),
        child: text,
      ),
    );
  }
}
