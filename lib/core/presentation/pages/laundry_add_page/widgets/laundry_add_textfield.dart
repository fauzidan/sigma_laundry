import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';

class LaundryAddTextfield extends StatelessWidget {
  const LaundryAddTextfield({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.none,
    required this.maxLength,
    required this.fieldName,
  });

  final TextEditingController controller;
  final TextInputType keyboardType;
  final int maxLength;
  final String fieldName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fieldName),
        verticalSpace(8),
        SizedBox(
          height: 60,
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            inputFormatters: [
              LengthLimitingTextInputFormatter(maxLength)
            ],
            style: context.textTheme.bodyLarge!.copyWith(
              fontSize: 18,
            ),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.colorScheme.tertiary,
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.colorScheme.secondary,
                  width: 1,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.colorScheme.surfaceDim,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
