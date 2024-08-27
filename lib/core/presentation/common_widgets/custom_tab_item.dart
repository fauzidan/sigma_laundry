import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';

class CustomTabItem extends StatelessWidget {
  const CustomTabItem({
    super.key,
    required this.tabName,
    required this.tabCount,
  });

  final String tabName;
  final int tabCount;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        children: [
          Text(
            tabName,
            overflow: TextOverflow.ellipsis,
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(start: 9),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: context.colorScheme.secondary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                tabCount > 9 ? "9+" : tabCount.toString(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
