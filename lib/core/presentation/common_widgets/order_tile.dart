import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sigma_laundry/config/extension/color_extension.dart';
import 'package:sigma_laundry/config/extension/int_extension.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/domain/entity/order.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({
    super.key,
    required this.order,
  });

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.colorScheme.surfaceContainerHigh,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  order.customerName,
                  style: context.textTheme.bodyLarge,
                ),
                Row(
                  children: [
                    Text(order.totalPrice.toIDRCurrencyFormat()),
                    horizontalSpace(8),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: order.laundryStatus.color.lighten(50),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Text(
                        order.laundryStatus.name,
                        style: context.textTheme.labelLarge!.copyWith(
                          color: order.laundryStatus.color.darken(30),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  DateFormat('hh:mm').format(order.laundryReceivedDate),
                ),
                Text(
                  DateFormat('D MMM').format(order.laundryReceivedDate),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
