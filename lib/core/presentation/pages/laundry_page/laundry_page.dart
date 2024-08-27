import 'package:flutter/material.dart';
import 'package:sigma_laundry/core/presentation/common_widgets/main_app_bar.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';

class LaundryPage extends StatelessWidget {
  const LaundryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        appBarTitle: const Text('Laundry'),
        isHomePage: false,
      ),
      body: ListView(
        children: [
          verticalSpace(16),
          
        ],
      ),
    );
  }
}
