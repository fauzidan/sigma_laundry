// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:sigma_laundry/config/enums/account_level.dart';

class Employee {
  final String employeeId;
  final String employeeName;
  final String employeePhoneNumber;
  final AccountLevel accountLevel;
  final DateTime? employeeLastActive;
  final bool isOnline;
  final String password;

  Employee({
    required this.employeeId,
    required this.employeeName,
    required this.employeePhoneNumber,
    required this.accountLevel,
    required this.employeeLastActive,
    required this.isOnline,
    required this.password,
  });
}
