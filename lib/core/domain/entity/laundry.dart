// ignore_for_file: public_member_api_docs, sort_constructors_first
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

enum LaundryCategory{
  clothes("Pakaian"),
  sheet("Sprei"),
  blanket("Selimut");

  final String name;
  const LaundryCategory(this.name);
} 
