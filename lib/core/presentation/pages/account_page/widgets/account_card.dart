import 'package:flutter/material.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 200,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            gradient: LinearGradient(
              colors: [
                context.colorScheme.primaryContainer,
                context.colorScheme.tertiaryContainer,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                  color: context.colorScheme.shadow,
                  blurRadius: 4,
                  spreadRadius: -3,
                  offset: const Offset(2, 2)),
            ]),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'Sigma Laundry Card',
                style: context.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.tertiary,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: context.colorScheme.secondary,
                    child: CircleAvatar(
                      backgroundColor: context.colorScheme.secondaryContainer,
                      radius: 45,
                    ),
                  ),
                  horizontalSpace(16),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nate Higgers',
                        style: context.textTheme.titleLarge,
                      ),
                      Text(
                        '0812-3456-7890',
                        style: context.textTheme.bodyLarge,
                      ),
                      verticalSpace(8),
                      Text(
                        'Karyawan',
                        style: context.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
