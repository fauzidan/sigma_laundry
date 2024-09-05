import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/enums/laundry_category.dart';
import 'package:sigma_laundry/config/enums/laundry_status.dart';
import 'package:sigma_laundry/config/extension/date_extension.dart';
import 'package:sigma_laundry/core/domain/entity/laundry.dart';
import 'package:sigma_laundry/core/domain/entity/order.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/main_app_bar.dart';
import 'package:sigma_laundry/core/presentation/pages/laundry_details_page/widgets/details_tile.dart';

final order = Order(
  orderId: '555555',
  customerName: 'negalogia',
  customerPhoneNumber: '08921232123423',
  laundryReceivedDate: DateTime(2019),
  totalPrice: 34000,
  laundryStatus: LaundryStatus.completed,
  laundries: [
    Laundry(
      laundryId: '123123',
      laundryCategory: LaundryCategory.clothes,
      isIroning: true,
      weight: 5.0,
      price: 34000,
    ),
  ],
);

class LaundryDetailsPage extends StatelessWidget {
  const LaundryDetailsPage({
    super.key,
    // required this.order,
  });

  // final Order order;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        appBarTitle: Text('Detail Laundry'),
        isHomePage: false,
      ),
      body: ListView(
        children: [
          DetailsTile(
            title: 'Nama Pelanggan',
            data: order.customerName,
          ),
          DetailsTile(
            title: 'Nomor HP',
            data: order.customerPhoneNumber,
          ),
          DetailsTile(
            title: 'Tanggal Masuk',
            data: order.laundryReceivedDate.toDateAndTimeID(),
          ),
        ],
      ),
    );
  }
}
