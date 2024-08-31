import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/custom_bottom_navbar.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/custom_bottom_navbar_item.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/main_app_bar.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';
import 'package:sigma_laundry/core/presentation/pages/laundry_page/sub_pages/laundry_received_page/laundry_received_page.dart';

class LaundryPage extends StatefulWidget {
  const LaundryPage({super.key});

  @override
  State<LaundryPage> createState() => _LaundryPageState();
}

class _LaundryPageState extends State<LaundryPage> {
  int selectedPageIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        appBarTitle: const Text('Laundry'),
        isHomePage: false,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        navbarItems: [
          CustomBottomNavbarItem(
            index: 0,
            title: 'Diterima',
            icon: Icons.shopping_bag_outlined,
            selectedIcon: Icons.shopping_bag_rounded,
            isSelected: selectedPageIndex == 0,
          ),
          CustomBottomNavbarItem(
            index: 1,
            title: 'Dikerjakan',
            icon: Icons.replay_outlined,
            selectedIcon: Icons.replay_circle_filled,
            isSelected: selectedPageIndex == 1,
          ),
          CustomBottomNavbarItem(
            index: 2,
            title: 'Selesai',
            icon: Icons.menu,
            selectedIcon: Icons.menu_sharp,
            isSelected: selectedPageIndex == 2,
          ),
        ],
        selectedIndex: 0,
        onTap: (index) {
          selectedPageIndex = index;
          pageController.animateToPage(
            selectedPageIndex,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
          );
        },
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) => setState(
          () {
            selectedPageIndex = value;
          },
        ),
        children: [
          Center(
            child: const LaundryReceivedPage(),
          ),
          Center(
            child: Text('Page2'),
          ),
          Center(
            child: Text('Page3'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        child: Icon(
          Icons.add,
          color: context.colorScheme.onPrimaryContainer,
        ),
        onPressed: () {},
      ),
    );
  }
}
