import 'laundry.dart';

class Transaction {

  final String transactionId;
  final String customerName;
  final String customerPhoneNumber;
  final DateTime laundryDate;
  final DateTime? laundryCompleteDate;
  final DateTime? laundryRetrieveDate;
  final double totalPrice;
  final LaundryStatus status;
  final List<Laundry> laundries;
  
  Transaction({
    required this.transactionId,
    required this.customerName,
    required this.customerPhoneNumber,
    required this.laundryDate,
    this.laundryCompleteDate,
    this.laundryRetrieveDate,
    required this.totalPrice,
    required this.status,
    required this.laundries,
  });
}

enum LaundryStatus{
  received("Diterima"),
  doing("Dikerjakan"),
  completed("Selesai"),
  retrieved("Sudah diambil");

  final String name;
  const LaundryStatus(this.name);
}
