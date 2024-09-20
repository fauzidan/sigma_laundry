import 'package:flutter/material.dart';

class AccountMenuTile extends StatelessWidget {
  const AccountMenuTile({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.keyboard_arrow_right_rounded),
          )
        ],
      ),
    );
  }
}
