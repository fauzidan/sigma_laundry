import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/custom_tab_item.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: context.colorScheme.primary,
      ),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        indicator: BoxDecoration(
          color: context.colorScheme.primary,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        labelColor: context.colorScheme.surface,
        tabs: const [
          CustomTabItem(tabName: 'Diterima', tabCount: 4),
          CustomTabItem(tabName: 'Dikerjakan', tabCount: 5),
          CustomTabItem(tabName: 'Selesai', tabCount: 5),
        ],
      ),
    );
  }
}
