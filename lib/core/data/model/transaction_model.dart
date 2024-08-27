import 'dart:convert';

import 'package:sigma_laundry/core/domain/entity/transaction.dart';

class TransactionModel extends Transaction {
  TransactionModel({
    required super.transactionId,
    required super.transactionDate,
    required super.orderId,
    required super.price,
    required super.paymentMethod,
  });

  factory TransactionModel.fromJson(String json){
    return TransactionModel.fromMap(jsonDecode(json));
  }

  String toJson(){
    return jsonEncode(toMap());
  }

  factory TransactionModel.fromMap(Map<String, dynamic> json) {
    return TransactionModel(
      transactionId: json['transactionId'],
      transactionDate: json['transactionDate'],
      orderId: json['orderId'],
      price: json['price'],
      paymentMethod: json['paymentMethod'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'transactionId': transactionId,
      'transactionDate': transactionDate,
      'orderId': orderId,
      'price': price,
      'paymentMethod': paymentMethod,
    };
  }
}
