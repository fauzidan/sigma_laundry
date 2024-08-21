import 'package:sigma_laundry/config/enums/account_level.dart';
import 'package:sigma_laundry/core/domain/repositories/employee_repository.dart';
import 'package:sigma_laundry/core/domain/entity/employee.dart';
import 'package:sigma_laundry/core/domain/result.dart';

class DummyEmployeeRepository implements EmployeeRepository {
  @override
  Future<Result<Employee>> createEmployee({required Employee employee}) {
    // TODO: implement createEmployee
    throw UnimplementedError();
  }

  @override
  Future<Result<Employee>> getEmployee({required String employeeid}) async {
    final data = Employee(
      employeeId: '001',
      employeeName: 'Iqbal',
      employeePhoneNumber: '0812xxxxxxxx',
      accountLevel: AccountLevel.owner,
      employeeLastActive: null,
      isOnline: true,
      password: '12345678',
    );

    return Result.success(data);
  }

  @override
  Future<Result<Employee>> updateEmployee({required Employee employee}) {
    // TODO: implement updateEmployee
    throw UnimplementedError();
  }
}
