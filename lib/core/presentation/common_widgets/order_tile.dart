import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sigma_laundry/config/extension/color_extension.dart';
import 'package:sigma_laundry/config/extension/int_extension.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/domain/entity/order.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/colored_label.dart';
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
      color: context.colorScheme.tertiaryContainer,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      order.customerName,
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    horizontalSpace(8),
                    ColoredLabel(
                      text: order.laundryStatus.name,
                      textColor: order.laundryStatus.color.darken(30),
                      backgroundColor: order.laundryStatus.color.lighten(50),
                    ),
                  ],
                ),
                Text(order.totalPrice.toIDRCurrencyFormat()),
                horizontalSpace(8),
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
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
