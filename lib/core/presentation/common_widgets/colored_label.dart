import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';

class ColoredLabel extends StatelessWidget {
  const ColoredLabel({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Text(
        text,
        style: context.textTheme.labelLarge!.copyWith(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
