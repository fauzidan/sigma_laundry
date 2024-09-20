import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/main_app_bar.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';
import 'package:sigma_laundry/core/presentation/pages/account_page/widgets/account_card.dart';
import 'package:sigma_laundry/core/presentation/pages/account_page/widgets/account_menu_tile.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        appBarTitle: Text('Akun'),
        isHomePage: false,
      ),
      body: ListView(
        children: [
          const AccountCard(),
          AccountMenuTile(
            label: 'Edit Profil',
            onPressed: () {},
          ),
          const Divider(
            height: 0,
            indent: 16,
            endIndent: 16,
          ),
          AccountMenuTile(
            label: 'Shift',
            onPressed: () {},
          ),
          const Divider(
            height: 0,
            indent: 16,
            endIndent: 16,
          ),
          AccountMenuTile(
            label: 'Pesan',
            onPressed: () {},
          ),
          verticalSpace(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colorScheme.error,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
              child: Text(
                'Keluar',
                style: context.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.onError,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
