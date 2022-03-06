import 'package:shopeefood_clone/utils/money_utls.dart';

import '../models/model_collection.dart';
import '../models/model_price.dart';

extension PriceExtension on ModelPrice {
  String get getPrice {
    if (value != null && unit != null) {
      return '${MoneyUtils.formatMoney(value!)}$unit';
    }
    return '';
  }

}

