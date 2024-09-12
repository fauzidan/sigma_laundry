import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';

class DetailsTile extends StatelessWidget {
  const DetailsTile({
    super.key,
    required this.title,
    required this.data,
  });

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: context.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            data,
            style: context.textTheme.bodyLarge!.copyWith(),
          ),
        ],
      ),
    );
  }
}
