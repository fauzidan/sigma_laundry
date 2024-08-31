import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/order_tile.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';

class LaundryReceivedPage extends StatelessWidget {
  const LaundryReceivedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OrderTile(),
        ),
      ],
    );
  }
}
