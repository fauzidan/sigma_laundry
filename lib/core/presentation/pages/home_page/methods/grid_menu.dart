import 'package:flutter/material.dart';
import 'package:sigma_laundry/core/presentation/pages/home_page/widgets/home_page_button.dart';

Widget gridMenu() {
  return GridView.count(
    crossAxisCount: 3,
    mainAxisSpacing: 12,
    crossAxisSpacing: 12,
    shrinkWrap: true,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    children: [
      HomePageButton(
        imageAsset: 'assets/images/laundry.svg',
        buttonLabel: 'Laundry',
        imageSemanticName: 'Laundry',
        onTap: () {},
      ),
      HomePageButton(
        imageAsset: 'assets/images/invoice.svg',
        buttonLabel: 'Transaksi',
        imageSemanticName: 'Transaksi',
        onTap: () {},
      ),
      HomePageButton(
        imageAsset: 'assets/images/wallet.svg',
        buttonLabel: 'Penjualan',
        imageSemanticName: 'Penjualan',
        onTap: () {},
      ),
      HomePageButton(
        imageAsset: 'assets/images/discount.svg',
        buttonLabel: 'Kupon & Promo',
        imageSemanticName: 'Kupon & Promo',
        onTap: () {},
      ),
      HomePageButton(
        imageAsset: 'assets/images/employee.svg',
        buttonLabel: 'Karyawan',
        imageSemanticName: 'Karyawan',
        onTap: () {},
      ),
      HomePageButton(
        imageAsset: 'assets/images/settings.svg',
        buttonLabel: 'Pengaturan',
        imageSemanticName: 'Pengaturan',
        onTap: () {},
      ),
    ],
  );
}
