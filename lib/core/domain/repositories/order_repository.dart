import 'package:sigma_laundry/core/domain/entity/order.dart';
import 'package:sigma_laundry/core/domain/result.dart';

abstract interface class OrderRepository {
  Future<Result<Order>> createOrder({
    required Order order,
  });

  Future<Result<Order>> getOrder({
    required String orderId
  });

  Future<Result<List<Order>>> searchOrder({
    required String name,
  });
}
