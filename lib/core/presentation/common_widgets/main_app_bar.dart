import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    required this.appBarTitle,
    required this.isHomePage,
  });

  final Widget appBarTitle;
  final bool isHomePage;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: appBarTitle,
      centerTitle: true,
      leading: !isHomePage
          ? IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_sharp,
              ),
            )
          : null,
      shape: Border(
        bottom: BorderSide(
          color: context.colorScheme.onSurface,
          width: 0.2,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
