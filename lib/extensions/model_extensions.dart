import 'package:shopeefood_clone/utils/money_utls.dart';

import '../models/model_collection.dart';
import '../models/model_price.dart';

extension ModelCollectionExtension on ModelCollection {
  String? get getIcon {
    if (photos?.isNotEmpty ?? false) {
      return photos![0].value;
    }
    return null;
  }

}

extension PriceExtension on Price {
  String get getPrice {
    if (value != null && unit != null) {
      return '${MoneyUtils.formatMoney(value!)}$unit';
    }
    return '';
  }

}

