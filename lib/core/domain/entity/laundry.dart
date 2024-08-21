// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:sigma_laundry/config/enums/laundry_category.dart';

class Laundry {
  final String laundryId;
  final LaundryCategory laundryCategory;
  final bool isIroning;
  final double price;
  final int? amount;
  final double? weight;

  Laundry({
    required this.laundryId,
    required this.laundryCategory,
    required this.isIroning,
    required this.price,
    this.amount,
    this.weight,
  });
}

