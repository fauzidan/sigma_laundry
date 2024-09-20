import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/enums/laundry_category.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/domain/entity/laundry.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/laundry_tile.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/main_app_bar.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';
import 'package:sigma_laundry/core/presentation/pages/laundry_add_page/widgets/laundry_add_page_bottombar.dart';
import 'package:sigma_laundry/core/presentation/pages/laundry_add_page/widgets/laundry_add_textfield.dart';

class LaundryAddPage extends StatefulWidget {
  const LaundryAddPage({super.key});

  @override
  State<LaundryAddPage> createState() => _LaundryAddPageState();
}

class _LaundryAddPageState extends State<LaundryAddPage> {
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();

  final laundries = [
    Laundry(
      laundryId: '0111',
      laundryCategory: LaundryCategory.clothes,
      isIroning: true,
      price: 50000,
      weight: 5.3
    ),
    Laundry(
      laundryId: '0112',
      laundryCategory: LaundryCategory.blanket,
      isIroning: true,
      price: 60000,
      amount: 1,
    ),
    Laundry(
      laundryId: '0113',
      laundryCategory: LaundryCategory.carpet,
      isIroning: false,
      price: 100000,
      amount: 6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        appBarTitle: Text('Tambah Laundry'),
        isHomePage: false,
      ),
      body: ListView(
        children: [
          verticalSpace(16),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: LaundryAddTextfield(
              controller: nameController,
              maxLength: 25,
              fieldName: 'Nama',
              keyboardType: TextInputType.name,
            ),
          ),
          verticalSpace(12),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: LaundryAddTextfield(
              controller: phoneNumberController,
              maxLength: 15,
              fieldName: 'Nomor HP',
              keyboardType: TextInputType.phone,
            ),
          ),
          verticalSpace(16),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: Text('Isi Laundry'),
          ),
          Column(
            children: [
              Dismissible(
                key: ValueKey(laundries[0].laundryId),
                direction: DismissDirection.endToStart,
                // onDismissed: ,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: LaundryTile(laundry: laundries[0]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: LaundryTile(laundry: laundries[1]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: LaundryTile(laundry: laundries[2]),
              ),
            ],
          ),
          verticalSpace(4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: context.colorScheme.onTertiaryContainer,
                backgroundColor: context.colorScheme.tertiaryContainer,
                textStyle: context.textTheme.bodyLarge!,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
              label: const Text(
                'Tambah Laundry',
              ),
            ),
          ),
          verticalSpace(16),
        ],
      ),
      bottomNavigationBar: LaundryAddPageBottombar(totalPrice: 50000,),
    );
  }
}
