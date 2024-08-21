import 'package:sigma_laundry/core/domain/result.dart';

abstract interface class AuthenticationRepository {
  Future<Result<String>> login({
    required String employeeId,
    required String password,
  });

  Future<Result<void>> logout();
}
