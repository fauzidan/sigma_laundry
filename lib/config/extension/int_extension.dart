import 'package:intl/intl.dart';

extension IntCurrencyExtension on int {
  String toIDRCurrencyFormat() {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp. ',
      decimalDigits: 0 ,
    ).format(this);
  }
}
