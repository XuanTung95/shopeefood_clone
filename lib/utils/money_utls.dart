


import 'package:intl/intl.dart';

class MoneyUtils {
  static final _numberFormat = NumberFormat("###,###,###", "en_US");

  static String formatMoney(double value) {
    return _numberFormat.format(value);
  }
}