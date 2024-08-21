import 'dart:convert';

import 'package:sigma_laundry/config/enums/laundry_status.dart';
import 'package:sigma_laundry/core/domain/entity/order.dart';

class OrderModel extends Order {
  OrderModel({
    required super.orderId,
    required super.customerName,
    required super.customerPhoneNumber,
    required super.laundryReceivedDate,
    super.laundryCompleteDate,
    super.laundryRetrieveDate,
    required super.totalPrice,
    required super.laundryStatus,
    required super.laundries,
  });

  factory OrderModel.fromJson(String json) {
    return OrderModel.fromMap(jsonDecode(json));
  }

  String toJson(){
    return jsonEncode(toMap());
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      orderId: map['orderId'],
      customerName: map['customerName'],
      customerPhoneNumber: map['customerPhoneNumber'],
      laundryReceivedDate: map['laundryReceivedDate'],
      laundryCompleteDate: map['laundryCompleteDate'],
      laundryRetrieveDate: map['laundryRetrieveDate'],
      totalPrice: map['totalPrice'],
      laundryStatus: LaundryStatus.values.byName(map['laundryStatus']),
      laundries: map['laundries'],
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'orderId': orderId,
      'customerName': customerName,
      'customerPhoneNumber': customerPhoneNumber,
      'laundryReceivedDate': laundryReceivedDate,
      'laundryCompleteDate': laundryCompleteDate,
      'laundryRetrieveDate': laundryRetrieveDate,
      'totalPrice': totalPrice,
      'laundryStatus': laundryStatus.name,
      'laundries': laundries,
    };
  }
}
