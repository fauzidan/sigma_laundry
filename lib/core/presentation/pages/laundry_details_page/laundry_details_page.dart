import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/enums/laundry_category.dart';
import 'package:sigma_laundry/config/enums/laundry_status.dart';
import 'package:sigma_laundry/config/extension/color_extension.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/domain/entity/laundry.dart';
import 'package:sigma_laundry/core/domain/entity/order.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/colored_label.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/main_app_bar.dart';
import 'package:sigma_laundry/core/presentation/pages/laundry_details_page/widgets/detail_home.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/laundry_tile.dart';

final order = Order(
  orderId: '555555',
  customerName: 'negalogia',
  customerPhoneNumber: '08921232123423',
  laundryReceivedDate: DateTime(2019),
  laundryCompleteDate: DateTime(2019),
  laundryRetrieveDate: DateTime(2019),
  totalPrice: 34000,
  laundryStatus: LaundryStatus.completed,
  laundries: [],
);

final laundry = Laundry(
  laundryId: '123123',
  laundryCategory: LaundryCategory.clothes,
  isIroning: false,
  weight: 4.6,
  price: 34000,
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
          Padding(
            padding: const EdgeInsets.only(
              left: 24, right: 24, top: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status :',
                  style: context.textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ColoredLabel(
                  text: order.laundryStatus.name,
                  textColor: order.laundryStatus.color.darken(30),
                  backgroundColor: order.laundryStatus.color.lighten(50),
                )
              ],
            ),
          ),
          DetailsHome(order: order),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 16,
              left: 24,
            ),
            child: Text(
              'Isi Pesanan',
              style: context.textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: LaundryTile(laundry: laundry),
          ),
        ],
      ),
    );
  }
}
