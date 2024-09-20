import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/int_extension.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';

class LaundryAddPageBottombar extends StatelessWidget {
  const LaundryAddPageBottombar({
    super.key,
    required this.totalPrice,
  });

  final int totalPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: context.colorScheme.onSurface,
            width: 0.2,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total Harga'),
                Text(
                  totalPrice.toIDRCurrencyFormat(),
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.payments),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: context.colorScheme.onPrimary,
                backgroundColor: context.colorScheme.primary,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
              label: Text(
                'Bayar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
