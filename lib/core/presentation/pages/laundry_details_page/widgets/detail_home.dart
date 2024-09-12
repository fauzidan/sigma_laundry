import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/date_extension.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/domain/entity/order.dart';
import 'package:sigma_laundry/core/presentation/pages/laundry_details_page/widgets/details_tile.dart';

class DetailsHome extends StatelessWidget {
  const DetailsHome({
    super.key,
    required this.order,
  });

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        color: context.colorScheme.secondaryContainer,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              DetailsTile(
                title: 'ID Order :',
                data: order.orderId,
              ),
              DetailsTile(
                title: 'Nama Pelanggan :',
                data: order.customerName,
              ),
              DetailsTile(
                title: 'Nomor HP :',
                data: order.customerPhoneNumber,
              ),
              DetailsTile(
                title: 'Waktu Diterima :',
                data: order.laundryReceivedDate.toDateAndTimeID(),
              ),
              if (order.laundryCompleteDate != null)
                DetailsTile(
                  title: 'Waktu Selesai :',
                  data: order.laundryCompleteDate!.toDateAndTimeID(),
                ),
              if (order.laundryRetrieveDate != null)
                DetailsTile(
                  title: 'Waktu Diambil :',
                  data: order.laundryRetrieveDate!.toDateAndTimeID(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
