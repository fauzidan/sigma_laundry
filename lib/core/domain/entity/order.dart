import 'package:sigma_laundry/config/enums/laundry_status.dart';

import 'laundry.dart';

class Order {
  final String orderId;
  final String customerName;
  final String customerPhoneNumber;
  final DateTime laundryReceivedDate;
  final DateTime? laundryCompleteDate;
  final DateTime? laundryRetrieveDate;
  final int totalPrice;
  final LaundryStatus laundryStatus;
  final List<Laundry> laundries;
  
  Order({
    required this.orderId,
    required this.customerName,
    required this.customerPhoneNumber,
    required this.laundryReceivedDate,
    this.laundryCompleteDate,
    this.laundryRetrieveDate,
    required this.totalPrice,
    required this.laundryStatus,
    required this.laundries,
  });
}


