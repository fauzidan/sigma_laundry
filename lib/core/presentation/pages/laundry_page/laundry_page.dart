import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/enums/laundry_status.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/domain/entity/order.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/custom_bottom_navbar.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/custom_bottom_navbar_item.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/main_app_bar.dart';
import 'package:sigma_laundry/core/presentation/pages/laundry_page/widgets/order_list_view.dart';

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
        appBarTitle: Text('Laundry'),
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
            child: OrderListView(
              orders: [
                Order(
                  orderId: '121212',
                  customerName: 'Anak Kost',
                  customerPhoneNumber: '081234567890',
                  laundryReceivedDate: DateTime(2022),
                  totalPrice: 55000,
                  laundryStatus: LaundryStatus.received,
                  laundries: [],
                ),
              ],
            ),
          ),
          Center(
            child: OrderListView(
              orders: [
                Order(
                  orderId: '2121212',
                  customerName: 'Pengangguran',
                  customerPhoneNumber: '098765432120',
                  laundryReceivedDate: DateTime(2021),
                  totalPrice: 5000,
                  laundryStatus: LaundryStatus.doing,
                  laundries: [],
                ),
                Order(
                  orderId: '2121212',
                  customerName: 'Pengangguran',
                  customerPhoneNumber: '098765432120',
                  laundryReceivedDate: DateTime(2021),
                  totalPrice: 5000,
                  laundryStatus: LaundryStatus.doing,
                  laundries: [],
                ),
              ],
            ),
          ),
          Center(
            child: OrderListView(
              orders: [
                Order(
                  orderId: '555555',
                  customerName: 'negalogia',
                  customerPhoneNumber: '08921232123423',
                  laundryReceivedDate: DateTime(2019),
                  totalPrice: 34000,
                  laundryStatus: LaundryStatus.completed,
                  laundries: [],
                ),
              ],
            ),
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
