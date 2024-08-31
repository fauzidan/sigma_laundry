import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';

class CustomBottomNavbarItem extends StatelessWidget {
  const CustomBottomNavbarItem({
    super.key,
    required this.index,
    required this.title,
    required this.icon,
    required this.selectedIcon,
    required this.isSelected,
  });

  final int index;
  final String title;
  final IconData icon;
  final IconData selectedIcon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color: isSelected
                ? context.colorScheme.primaryContainer
                : Colors.transparent,
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Icon(
            isSelected ? selectedIcon : icon,
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: context.textTheme.labelLarge!.copyWith(
            color: isSelected
                ? context.colorScheme.onPrimaryContainer
                : context.colorScheme.scrim,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
