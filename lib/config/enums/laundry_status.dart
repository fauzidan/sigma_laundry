import 'package:flutter/material.dart';

enum LaundryStatus {
  received("Diterima", Colors.orange),
  doing("Dikerjakan", Colors.yellow),
  completed("Selesai", Colors.green),
  retrieved("Sudah diambil", Colors.grey);

  final String name;
  final Color color;
  const LaundryStatus(
    this.name,
    this.color,
  );
}


