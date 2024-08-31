import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  '{{NAMA}}',
                  style: context.textTheme.bodyLarge,
                ),
                Row(
                  children: [
                    Text('{{HARGA}}'),
                    horizontalSpace(4),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.red.shade300,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Text('{{STATUS}}'),
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text('{{WAKTU}}')
          ],
        ),
      ),
    );
  }
}
