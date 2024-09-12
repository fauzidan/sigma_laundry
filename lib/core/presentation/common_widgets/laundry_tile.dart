import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/double_extension.dart';
import 'package:sigma_laundry/config/extension/int_extension.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/domain/entity/laundry.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';

class LaundryTile extends StatelessWidget {
  const LaundryTile({
    super.key,
    required this.laundry,
  });

  final Laundry laundry;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.colorScheme.tertiaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: context.colorScheme.tertiary,
                ),
                horizontalSpace(16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          laundry.laundryCategory.name,
                          style: context.textTheme.titleMedium!.copyWith(
                            color: context.colorScheme.onTertiaryContainer,
                          ),
                        ),
                        horizontalSpace(4),
                        if (laundry.weight != null)
                          Text(
                            '${laundry.weight!.removeDecimalZeroFormat()} kg',
                            style: context.textTheme.titleMedium!.copyWith(
                              color: context.colorScheme.onTertiaryContainer,
                            ),
                          )
                        else
                          Text(
                            laundry.amount.toString(),
                            style: context.textTheme.titleMedium!.copyWith(
                              color: context.colorScheme.onTertiaryContainer,
                            ),
                          )
                      ],
                    ),
                    Text(
                      'Cuci ${laundry.isIroning ? ', Setrika' : ''}',
                      style: context.textTheme.labelLarge!.copyWith(
                        color: context.colorScheme.onTertiaryContainer,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              laundry.price.toIDRCurrencyFormat(),
              style: context.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
