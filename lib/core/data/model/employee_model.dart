import 'dart:convert';

import 'package:sigma_laundry/config/enums/account_level.dart';
import 'package:sigma_laundry/core/domain/entity/employee.dart';

class EmployeeModel extends Employee {
  EmployeeModel({
    required super.employeeId,
    required super.employeeName,
    required super.employeePhoneNumber,
    required super.accountLevel,
    required super.employeeLastActive,
    required super.isOnline,
    required super.password,
  });

  factory EmployeeModel.fromJson(String json) {
    return EmployeeModel.fromMap(jsonDecode(json));
  }

  String toJson() {
    return jsonEncode(toMap());
  }

  factory EmployeeModel.fromMap(Map<String, dynamic> map) {
    return EmployeeModel(
      employeeId: map['employeeId'],
      employeeName: map['employeeName'],
      employeePhoneNumber: map['employeePhoneNumber'],
      accountLevel: AccountLevel.values.byName(map['accountLevel']),
      employeeLastActive: map['employeeLastActive'],
      isOnline: map['isOnline'],
      password: map['password'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'employeeId': employeeId,
      'employeeName': employeeName,
      'employeePhoneNumber': employeePhoneNumber,
      'accountLevel': accountLevel.name,
      'employeeLastActive': employeeLastActive,
      'isOnline': isOnline,
      'password': password,
    };
  }
}
