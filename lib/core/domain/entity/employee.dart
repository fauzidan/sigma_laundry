// ignore_for_file: public_member_api_docs, sort_constructors_first
class Employee {
  final String employeeId;
  final String employeeName;
  final String employeePhoneNumber;
  final String? employeePhoto;
  final DateTime employeeLastActive;
  final String password;

  Employee({
    required this.employeeId,
    required this.employeeName,
    required this.employeePhoneNumber,
    this.employeePhoto,
    required this.employeeLastActive,
    required this.password,
  });
}
