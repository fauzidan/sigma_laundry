import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/custom_bottom_navbar_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.navbarItems,
    required this.onTap,
    required this.selectedIndex,
  });

  final List<CustomBottomNavbarItem> navbarItems;
  final void Function(int index) onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: context.colorScheme.onSurface,
            width: 0.1,
          ),
        ),
      ),
      padding: const EdgeInsets.only(top: 4),
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: navbarItems
            .map(
              (e) => GestureDetector(
                onTap: () => onTap(e.index),
                child: e,
              ),
            )
            .toList(),
      ),
    );
  }
}
