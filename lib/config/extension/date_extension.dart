import 'package:intl/intl.dart';

extension LocaleID on DateTime{
  String toStringID(String format) {
    return DateFormat(format).format(this);
  }

  String toDateAndTimeID(){
    return DateFormat('D MMM yyyy, hh:mm').format(this);
  }
}