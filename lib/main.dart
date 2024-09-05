import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/app/theme.dart';
import 'package:sigma_laundry/config/app/util.dart';
import 'package:sigma_laundry/core/presentation/pages/laundry_details_page/laundry_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Lato", "Work Sans");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      title: 'Sigma Laundry Flutter',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const LaundryDetailsPage(),
    );
  }
}
