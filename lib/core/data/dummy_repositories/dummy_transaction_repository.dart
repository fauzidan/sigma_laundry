import 'package:sigma_laundry/config/enums/payment_method.dart';
import 'package:sigma_laundry/core/domain/entity/transaction.dart';
import 'package:sigma_laundry/core/domain/repositories/transaction_repository.dart';
import 'package:sigma_laundry/core/domain/result.dart';

class DummyTransactionRepository implements TransactionRepository {
  @override
  Future<Result<Transaction>> createTransaction(
      {required Transaction transaction}) {
    // TODO: implement createTransaction
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Transaction>>> getTransactionList() async {
    return Result.success(
      [
        Transaction(
          transactionId: '1000',
          transactionDate: DateTime(
            2020,
            DateTime.july,
            DateTime.friday,
          ),
          orderId: '0100',
          price: 20000,
          paymentMethod: PaymentMethod.cash,
        ),
        Transaction(
          transactionId: '2000',
          transactionDate: DateTime(
            2020,
            DateTime.december,
            DateTime.friday,
          ),
          orderId: '0200',
          price: 50000,
          paymentMethod: PaymentMethod.cash,
        )
      ],
    );
  }
}
