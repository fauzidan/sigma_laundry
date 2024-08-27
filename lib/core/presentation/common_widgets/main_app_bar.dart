import 'package:flutter/material.dart';

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
          ? IconButton(onPressed: () {}, icon: const Icon(Icons.home_filled))
          : null,
      elevation: 1,
      
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
