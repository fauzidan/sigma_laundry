import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sigma_laundry/config/extension/theme_extension.dart';
import 'package:sigma_laundry/core/presentation/misc/spaces.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({
    super.key,
    required this.imageAsset,
    this.imageSemanticName,
    required this.buttonLabel,
    required this.onTap,
  });

  final String imageAsset;
  final String? imageSemanticName;
  final String buttonLabel;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colorScheme.surfaceContainer,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imageAsset,
                semanticsLabel: imageSemanticName,
                height: 75,
                fit: BoxFit.contain,
              ),
              verticalSpace(4),
              Flexible(
                child: Text(
                  buttonLabel,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: context.textTheme.labelLarge!.copyWith(
                    color: context.colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
