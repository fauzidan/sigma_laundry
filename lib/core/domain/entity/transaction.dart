// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:sigma_laundry/config/enums/payment_method.dart';
import 'package:sigma_laundry/core/domain/entity/order.dart';

class Transaction {
  final String transactionId;
  final DateTime transactionDate;
  final String orderId;
  final int price;
  final PaymentMethod paymentMethod;

  Transaction({
    required this.transactionId,
    required this.transactionDate,
    required this.orderId,
    required this.price,
    required this.paymentMethod,
  });
}