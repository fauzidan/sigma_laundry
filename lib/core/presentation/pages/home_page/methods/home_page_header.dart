import 'package:flutter/material.dart';

import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';

Widget homePageHeader({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Material(
      borderRadius: BorderRadius.circular(16),
      color: context.colorScheme.tertiaryContainer,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: context.colorScheme.tertiary,
              ),
              horizontalSpace(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selamat Datang!',
                    style: context.textTheme.labelLarge!.copyWith(
                      color: context.colorScheme.onTertiaryContainer,
                    ),
                  ),
                  Text(
                    '{NAMA KARYAWAN}',
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.colorScheme.onTertiaryContainer,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
