import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/enums/laundry_category.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/domain/entity/laundry.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/laundry_tile.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/main_app_bar.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';
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
    ),
    Laundry(
      laundryId: '0112',
      laundryCategory: LaundryCategory.blanket,
      isIroning: true,
      price: 60000,
    ),
    Laundry(
      laundryId: '0113',
      laundryCategory: LaundryCategory.carpet,
      isIroning: false,
      price: 100000,
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
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Text('Isi Laundry'),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LaundryTile(laundry: laundries[0]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LaundryTile(laundry: laundries[1]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LaundryTile(laundry: laundries[2]),
              ),
            ],
          ),
          UnconstrainedBox(
            child: SizedBox(
              width: 250,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  foregroundColor: context.colorScheme.onSecondaryContainer,
                  backgroundColor: context.colorScheme.secondaryContainer,
                  textStyle: context.textTheme.bodyLarge!,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                label: const Text(
                  'Tambah Laundry',
                ),
              ),
            ),
          ),
          verticalSpace(36),
        ],
      ),
    );
  }
}
