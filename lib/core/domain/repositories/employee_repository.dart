import 'package:sigma_laundry/core/domain/entity/employee.dart';
import 'package:sigma_laundry/core/domain/result.dart';

abstract interface class EmployeeRepository {
  Future<Result<Employee>> createEmployee({
    required Employee employee,
  });

  Future<Result<Employee>> getEmployee({
    required String employeeid,
  });

  Future<Result<Employee>> updateEmployee({
    required Employee employee,
  });
}
