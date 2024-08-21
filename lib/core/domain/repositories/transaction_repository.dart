import 'package:sigma_laundry/core/domain/entity/transaction.dart';
import 'package:sigma_laundry/core/domain/result.dart';

abstract interface class TransactionRepository {
  Future<Result<Transaction>> createTransaction({
    required Transaction transaction,
  });

  Future<Result<List<Transaction>>> getTransactionList();
}
