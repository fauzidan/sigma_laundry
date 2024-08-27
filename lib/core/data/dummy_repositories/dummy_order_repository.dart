import 'package:sigma_laundry/core/domain/entity/order.dart';
import 'package:sigma_laundry/core/domain/repositories/order_repository.dart';
import 'package:sigma_laundry/core/domain/result.dart';

class DummyOrderRepository implements OrderRepository{
  @override
  Future<Result<Order>> createOrder({required Order order}) {
    // TODO: implement createOrder
    throw UnimplementedError();
  }

  @override
  Future<Result<Order>> getOrder({required String orderId}) {
    // TODO: implement getOrder
    throw UnimplementedError();
  }
  
  @override
  Future<Result<List<Order>>> searchOrder({required String name}) {
    // TODO: implement searchOrder
    throw UnimplementedError();
  }
  
}