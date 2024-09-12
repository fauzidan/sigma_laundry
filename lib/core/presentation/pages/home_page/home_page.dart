import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/main_app_bar.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';
import 'package:sigma_laundry/core/presentation/pages/home_page/methods/grid_menu.dart';
import 'package:sigma_laundry/core/presentation/pages/home_page/methods/home_page_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        appBarTitle: Text('Sigma Laundry POS'),
        isHomePage: true,
      ),
      backgroundColor: context.colorScheme.surface,
      body: ListView(
        shrinkWrap: true,
        children: [
          verticalSpace(16),
          homePageHeader(context: context),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Menu',
              style: context.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          gridMenu(),
        ],
      ),
    );
  }
}
