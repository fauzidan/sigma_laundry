import 'package:flutter/material.dart';
import 'package:sigma_laundry/core/domain/entity/order.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/order_tile.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({
    super.key,
    required this.orders,
  });

  final List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: orders.map(
        (order) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            child: OrderTile(order: order),
          );
        },
      ).toList(),
    );
  }
}
